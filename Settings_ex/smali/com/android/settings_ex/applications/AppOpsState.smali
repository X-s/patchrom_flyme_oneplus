.class public Lcom/android/settings_ex/applications/AppOpsState;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;,
        Lcom/android/settings_ex/applications/AppOpsState$AppEntry;,
        Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;
    }
.end annotation


# static fields
.field public static final ALL_TEMPLATES:[Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

.field public static final APP_OP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOOTUP_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

.field static final DEBUG:Z = false

.field public static final DEVICE_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

.field public static final LOCATION_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

.field public static final MEDIA_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

.field public static final MESSAGING_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

.field public static final PERSONAL_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

.field static final TAG:Ljava/lang/String; = "AppOpsState"


# instance fields
.field final mAppOps:Landroid/app/AppOpsManager;

.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field final mOpSummaries:[Ljava/lang/CharSequence;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 99
    new-instance v0, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    new-array v2, v2, [Z

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings_ex/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    .line 116
    new-instance v0, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    const/16 v2, 0x8

    new-array v2, v2, [Z

    fill-array-data v2, :array_3

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings_ex/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    .line 135
    new-instance v0, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    const/16 v2, 0xa

    new-array v2, v2, [Z

    fill-array-data v2, :array_5

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings_ex/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    .line 158
    new-instance v0, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    new-array v1, v5, [I

    fill-array-data v1, :array_6

    new-array v2, v5, [Z

    fill-array-data v2, :array_7

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings_ex/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    .line 165
    new-instance v0, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    new-array v1, v6, [I

    fill-array-data v1, :array_8

    new-array v2, v6, [Z

    fill-array-data v2, :array_9

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings_ex/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    .line 178
    new-instance v0, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    new-array v1, v3, [I

    const/16 v2, 0x35

    aput v2, v1, v4

    new-array v2, v3, [Z

    aput-boolean v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings_ex/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    .line 183
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    sget-object v1, Lcom/android/settings_ex/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings_ex/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings_ex/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings_ex/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings_ex/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings_ex/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings_ex/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    .line 397
    new-instance v0, Lcom/android/settings_ex/applications/AppOpsState$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/AppOpsState$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/AppOpsState;->APP_OP_COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 99
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 116
    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x39
        0x3a
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 135
    :array_4
    .array-data 4
        0xe
        0x33
        0xf
        0x34
        0x14
        0x32
        0x15
        0x16
        0x37
        0x38
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 158
    nop

    :array_6
    .array-data 4
        0x1a
        0x1b
    .end array-data

    :array_7
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 165
    nop

    :array_8
    .array-data 4
        0xd
        0x30
        0x31
        0x36
        0x3b
    .end array-data

    :array_9
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppOpsState;->mContext:Landroid/content/Context;

    .line 57
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    .line 61
    return-void
.end method

.method private addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings_ex/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 8
    .param p2, "pkgOps"    # Landroid/app/AppOpsManager$PackageOps;
    .param p3, "appEntry"    # Lcom/android/settings_ex/applications/AppOpsState$AppEntry;
    .param p4, "opEntry"    # Landroid/app/AppOpsManager$OpEntry;
    .param p5, "allowMerge"    # Z
    .param p6, "switchOrder"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$PackageOps;",
            "Lcom/android/settings_ex/applications/AppOpsState$AppEntry;",
            "Landroid/app/AppOpsManager$OpEntry;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;>;"
    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 420
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;

    .line 421
    .local v2, "last":Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;
    invoke-virtual {v2}, Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings_ex/applications/AppOpsState$AppEntry;

    move-result-object v4

    if-ne v4, p3, :cond_2

    .line 422
    invoke-virtual {v2}, Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 423
    .local v3, "lastExe":Z
    :goto_0
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 424
    .local v1, "entryExe":Z
    :goto_1
    if-ne v3, v1, :cond_2

    .line 427
    invoke-virtual {v2, p4}, Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    .line 441
    .end local v1    # "entryExe":Z
    .end local v2    # "last":Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;
    .end local v3    # "lastExe":Z
    :goto_2
    return-void

    .line 422
    .restart local v2    # "last":Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 423
    .restart local v3    # "lastExe":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 432
    .end local v2    # "last":Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;
    .end local v3    # "lastExe":Z
    :cond_2
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    invoke-virtual {p3, v4}, Lcom/android/settings_ex/applications/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 433
    .local v0, "entry":Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;
    if-eqz v0, :cond_3

    .line 434
    invoke-virtual {v0, p4}, Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    goto :goto_2

    .line 437
    :cond_3
    new-instance v0, Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;

    .end local v0    # "entry":Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;
    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings_ex/applications/AppOpsState$AppEntry;I)V

    .line 440
    .restart local v0    # "entry":Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/applications/AppOpsState$AppEntry;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/applications/AppOpsState$AppEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Lcom/android/settings_ex/applications/AppOpsState$AppEntry;"
        }
    .end annotation

    .prologue
    .line 449
    .local p2, "appEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/AppOpsState$AppEntry;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/AppOpsState$AppEntry;

    .line 450
    .local v0, "appEntry":Lcom/android/settings_ex/applications/AppOpsState$AppEntry;
    if-nez v0, :cond_1

    .line 451
    if-nez p4, :cond_0

    .line 453
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2200

    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 461
    :cond_0
    new-instance v0, Lcom/android/settings_ex/applications/AppOpsState$AppEntry;

    .end local v0    # "appEntry":Lcom/android/settings_ex/applications/AppOpsState$AppEntry;
    invoke-direct {v0, p0, p4}, Lcom/android/settings_ex/applications/AppOpsState$AppEntry;-><init>(Lcom/android/settings_ex/applications/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    .line 462
    .restart local v0    # "appEntry":Lcom/android/settings_ex/applications/AppOpsState$AppEntry;
    invoke-virtual {v0, p1}, Lcom/android/settings_ex/applications/AppOpsState$AppEntry;->loadLabel(Landroid/content/Context;)V

    .line 463
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v2, v0

    .line 465
    :goto_0
    return-object v2

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppOpsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find info for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildState(Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;)Ljava/util/List;
    .locals 2
    .param p1, "tpl"    # Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings_ex/applications/AppOpsState;->buildState(Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public buildState(Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;
    .locals 31
    .param p1, "tpl"    # Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/AppOpsState;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 471
    .local v18, "context":Landroid/content/Context;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 472
    .local v15, "appEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/AppOpsState$AppEntry;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v27, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v26, "permOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v3, 0x3c

    new-array v0, v3, [I

    move-object/from16 v24, v0

    .line 477
    .local v24, "opToOrder":[I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;->ops:[I

    array-length v3, v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_1

    .line 478
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    aget-boolean v3, v3, v21

    if-eqz v3, :cond_0

    .line 479
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v21

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v25

    .line 480
    .local v25, "perm":Ljava/lang/String;
    if-eqz v25, :cond_0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 481
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v21

    aput v21, v24, v3

    .line 477
    .end local v25    # "perm":Ljava/lang/String;
    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 489
    :cond_1
    if-eqz p3, :cond_3

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;->ops:[I

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1, v8}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v30

    .line 495
    .local v30, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_1
    if-eqz v30, :cond_8

    .line 496
    const/16 v21, 0x0

    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_8

    .line 497
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 498
    .local v5, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3, v8}, Lcom/android/settings_ex/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/applications/AppOpsState$AppEntry;

    move-result-object v6

    .line 499
    .local v6, "appEntry":Lcom/android/settings_ex/applications/AppOpsState$AppEntry;
    if-nez v6, :cond_4

    .line 496
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 492
    .end local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "appEntry":Lcom/android/settings_ex/applications/AppOpsState$AppEntry;
    .end local v30    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;->ops:[I

    invoke-virtual {v3, v8}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v30

    .restart local v30    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_1

    .line 502
    .restart local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .restart local v6    # "appEntry":Lcom/android/settings_ex/applications/AppOpsState$AppEntry;
    :cond_4
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_3
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_2

    .line 503
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    move/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    .line 504
    .local v7, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/app/AppOpsManager;->isControlAllowed(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 506
    if-nez p3, :cond_6

    const/4 v8, 0x1

    :goto_4
    if-nez p3, :cond_7

    const/4 v9, 0x0

    :goto_5
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/settings_ex/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings_ex/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    .line 502
    :cond_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 506
    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    aget v9, v24, v3

    goto :goto_5

    .line 515
    .end local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "appEntry":Lcom/android/settings_ex/applications/AppOpsState$AppEntry;
    .end local v7    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v22    # "j":I
    :cond_8
    if-eqz p3, :cond_b

    .line 516
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v17, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v29

    .line 519
    .local v29, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 527
    .end local v29    # "pi":Landroid/content/pm/PackageInfo;
    :goto_6
    const/16 v21, 0x0

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_14

    .line 528
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageInfo;

    .line 529
    .local v16, "appInfo":Landroid/content/pm/PackageInfo;
    if-nez p3, :cond_9

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 531
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x1000

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 537
    :cond_9
    :goto_8
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3, v8}, Lcom/android/settings_ex/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/applications/AppOpsState$AppEntry;

    move-result-object v6

    .line 539
    .restart local v6    # "appEntry":Lcom/android/settings_ex/applications/AppOpsState$AppEntry;
    if-nez v6, :cond_c

    .line 527
    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 523
    .end local v6    # "appEntry":Lcom/android/settings_ex/applications/AppOpsState$AppEntry;
    .end local v16    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_b
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 524
    .local v28, "permsArray":[Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v8}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v17

    .restart local v17    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto :goto_6

    .line 532
    .end local v28    # "permsArray":[Ljava/lang/String;
    .restart local v16    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v20

    .line 534
    .local v20, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "appInfo":Landroid/content/pm/PackageInfo;
    check-cast v16, Landroid/content/pm/PackageInfo;

    .restart local v16    # "appInfo":Landroid/content/pm/PackageInfo;
    goto :goto_8

    .line 542
    .end local v20    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "appEntry":Lcom/android/settings_ex/applications/AppOpsState$AppEntry;
    :cond_c
    const/16 v19, 0x0

    .line 543
    .local v19, "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v5, 0x0

    .line 544
    .restart local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 545
    const/16 v22, 0x0

    .restart local v22    # "j":I
    :goto_9
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_a

    .line 546
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v3, :cond_e

    .line 547
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v22

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_e

    .line 545
    :cond_d
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 556
    :cond_e
    const/16 v23, 0x0

    .local v23, "k":I
    :goto_a
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_d

    .line 557
    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v22

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 556
    :cond_f
    :goto_b
    add-int/lit8 v23, v23, 0x1

    goto :goto_a

    .line 562
    :cond_10
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/android/settings_ex/applications/AppOpsState$AppEntry;->hasOp(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 565
    if-nez v19, :cond_11

    .line 566
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .restart local v19    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    new-instance v5, Landroid/app/AppOpsManager$PackageOps;

    .end local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v19

    invoke-direct {v5, v3, v8, v0}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 571
    .restart local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    :cond_11
    new-instance v7, Landroid/app/AppOpsManager$OpEntry;

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    .line 574
    .restart local v7    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/app/AppOpsManager;->isControlAllowed(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 576
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    if-nez p3, :cond_12

    const/4 v8, 0x1

    :goto_c
    if-nez p3, :cond_13

    const/4 v9, 0x0

    :goto_d
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/settings_ex/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings_ex/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    goto :goto_b

    :cond_12
    const/4 v8, 0x0

    goto :goto_c

    :cond_13
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    aget v9, v24, v3

    goto :goto_d

    .line 591
    .end local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "appEntry":Lcom/android/settings_ex/applications/AppOpsState$AppEntry;
    .end local v7    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v16    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v22    # "j":I
    .end local v23    # "k":I
    :cond_14
    sget-object v3, Lcom/android/settings_ex/applications/AppOpsState;->APP_OP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 594
    return-object v4

    .line 520
    :catch_1
    move-exception v3

    goto/16 :goto_6
.end method
