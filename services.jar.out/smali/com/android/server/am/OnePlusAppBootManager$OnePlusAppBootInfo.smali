.class public Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
.super Ljava/lang/Object;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnePlusAppBootInfo"
.end annotation


# static fields
.field public static final BOOT_FLAG_GO:I = 0x1

.field public static final BOOT_FLAG_IGNORE:I = 0x0

.field public static final PKG_ACTION_BLACKLIST:I = 0x2

.field public static final PKG_ACTION_DEFAULT:I = 0x0

.field public static final PKG_ACTION_INVALID:I = -0x1

.field public static final PKG_ACTION_WHITELIST:I = 0x1

.field public static final PKG_FLAG_BLACKLIST_APP:I = 0x10

.field public static final PKG_FLAG_BLACKLIST_COMPONENT:I = 0x1000

.field public static final PKG_FLAG_DATA_APP:I = 0x4

.field public static final PKG_FLAG_DEFAULT_APP:I = 0x1

.field public static final PKG_FLAG_FORCE_UPDATE_ACTION:I = 0x4000

.field public static final PKG_FLAG_SPECIAL_ACCESSIBILITY_APP:I = 0x400

.field public static final PKG_FLAG_SPECIAL_APP:I = 0x20

.field public static final PKG_FLAG_SPECIAL_DEPENDENCY_APP:I = 0x40

.field public static final PKG_FLAG_SPECIAL_HIDE_LAUNCHER_APP:I = 0x200

.field public static final PKG_FLAG_SPECIAL_INPUT_METHOD_APP:I = 0x100

.field public static final PKG_FLAG_SPECIAL_LAUNCHER_APP:I = 0x80

.field public static final PKG_FLAG_SPECIAL_TTS_APP:I = 0x2000

.field public static final PKG_FLAG_SPECIAL_WIDGET_APP:I = 0x800

.field public static final PKG_FLAG_SYS_APP:I = 0x2

.field public static final PKG_FLAG_WHITELIST_APP:I = 0x8


# instance fields
.field private volatile mAction:I

.field private mBlackListEnable:Z

.field private volatile mBootFlag:I

.field private mCalleePkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerPkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCallingServiceTag:Ljava/lang/String;

.field private mLastCallingServiceTime:J

.field mParserPkg:Landroid/content/pm/PackageParser$Package;

.field private volatile mPkgFlag:I

.field private mPkgName:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V
    .locals 6
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1126
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    .line 1082
    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    .line 1083
    iput v4, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    .line 1089
    iput v4, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    .line 1113
    iput v5, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1117
    iput v4, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1118
    iput-boolean v5, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    .line 1120
    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTag:Ljava/lang/String;

    .line 1121
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTime:J

    .line 1123
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCallerPkgSet:Ljava/util/HashSet;

    .line 1124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCalleePkgSet:Ljava/util/HashSet;

    .line 1127
    iput-object p2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    .line 1128
    # getter for: Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$000()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 1129
    # getter for: Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    .line 1130
    .local v0, "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    if-eqz v0, :cond_0

    .line 1131
    iget v1, v0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    .line 1132
    iget v1, v0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mFlag:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    .line 1133
    iput-boolean v5, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    .line 1139
    .end local v0    # "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    :cond_0
    :goto_0
    return-void

    .line 1135
    .restart local v0    # "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    goto :goto_0
.end method


# virtual methods
.method public addCalleePackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1334
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCalleePkgSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1337
    :cond_0
    return-void
.end method

.method public addCallerPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1328
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCallerPkgSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1331
    :cond_0
    return-void
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 1280
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    return v0
.end method

.method public getBlackListEnableFlag()Z
    .locals 1

    .prologue
    .line 1303
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    return v0
.end method

.method public getBootFlag()I
    .locals 1

    .prologue
    .line 1295
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    return v0
.end method

.method public getCalleePackageSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCalleePkgSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getCalleePackageSetString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCalleePkgSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallerPackageSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCallerPkgSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getCallerPackageSetString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCallerPkgSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPkgFlag()I
    .locals 1

    .prologue
    .line 1287
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 1273
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 1277
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    .line 1278
    return-void
.end method

.method public setBlackListEnableFlag(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1299
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    .line 1300
    return-void
.end method

.method public setBootFlag(I)V
    .locals 0
    .param p1, "bootFlag"    # I

    .prologue
    .line 1291
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1292
    return-void
.end method

.method public setDependencyPackageFlag()V
    .locals 1

    .prologue
    .line 1142
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    or-int/lit8 v0, v0, 0x40

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1144
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1145
    return-void
.end method

.method public setPPPackage(Landroid/content/pm/PackageParser$Package;)V
    .locals 11
    .param p1, "parserPkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v10, 0x1

    .line 1157
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    .line 1158
    if-eqz p1, :cond_0

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    if-eqz v8, :cond_0

    const-string v8, "android"

    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1160
    :cond_0
    iget v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1161
    iget v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    and-int/lit8 v8, v8, -0x5

    iput v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1162
    iput v10, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1163
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " setPPPackage # abi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1263
    :cond_1
    :goto_0
    return-void

    .line 1166
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_e

    .line 1167
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_a

    .line 1168
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    .line 1169
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x81

    if-eqz v8, :cond_f

    .line 1171
    iget v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1172
    iget v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    and-int/lit8 v8, v8, -0x5

    iput v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1173
    iput v10, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1174
    invoke-virtual {p0, v10}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1181
    :goto_1
    const/4 v4, 0x0

    .line 1182
    .local v4, "bingoLauncher":Z
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 1183
    .local v0, "ac":Landroid/content/pm/PackageParser$Activity;
    if-eqz v4, :cond_10

    .line 1198
    .end local v0    # "ac":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    if-nez v4, :cond_6

    .line 1199
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_5

    .line 1200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "# setPPPackage # parserPkg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " # hide-laucher app"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1203
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v8

    or-int/lit8 v8, v8, 0x20

    invoke-virtual {p0, v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 1206
    :cond_6
    const/4 v5, 0x0

    .line 1207
    .local v5, "bingoTTSService":Z
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Service;

    .line 1208
    .local v0, "ac":Landroid/content/pm/PackageParser$Service;
    if-eqz v5, :cond_12

    .line 1224
    .end local v0    # "ac":Landroid/content/pm/PackageParser$Service;
    :cond_8
    if-ne v5, v10, :cond_a

    .line 1225
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_9

    .line 1226
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "# setPPPackage # parserPkg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " # tts app"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1229
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v8

    or-int/lit8 v8, v8, 0x20

    invoke-virtual {p0, v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 1233
    .end local v4    # "bingoLauncher":Z
    .end local v5    # "bingoTTSService":Z
    :cond_a
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v9, "clock"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v9, "calendar"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v9, "plan"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v9, "mail"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v9, "test"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v9, "cts"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1240
    :cond_b
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_c

    .line 1241
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "# setPPPackage # parserPkg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " # alarm app"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1245
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v8

    or-int/lit8 v8, v8, 0x20

    invoke-virtual {p0, v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 1253
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v8

    if-nez v8, :cond_e

    .line 1254
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_14

    .line 1255
    invoke-virtual {p0, v10}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1256
    invoke-virtual {p0, v10}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1262
    :cond_e
    :goto_4
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "# setPPPackage # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1176
    :cond_f
    iget v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    and-int/lit8 v8, v8, -0x3

    iput v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1177
    iget v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1178
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    goto/16 :goto_1

    .line 1186
    .local v0, "ac":Landroid/content/pm/PackageParser$Activity;
    .restart local v4    # "bingoLauncher":Z
    :cond_10
    if-eqz v0, :cond_3

    .line 1187
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 1188
    .local v2, "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1189
    .local v1, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-eqz v1, :cond_11

    .line 1190
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1191
    const/4 v4, 0x1

    .line 1192
    goto/16 :goto_2

    .line 1211
    .end local v1    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v2    # "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .local v0, "ac":Landroid/content/pm/PackageParser$Service;
    .restart local v5    # "bingoTTSService":Z
    :cond_12
    if-eqz v0, :cond_7

    .line 1212
    iget-object v3, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    .line 1213
    .local v3, "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 1214
    .local v1, "aii":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    if-eqz v1, :cond_13

    .line 1215
    const-string v8, "android.intent.action.TTS_SERVICE"

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1216
    const/4 v5, 0x1

    .line 1217
    goto/16 :goto_3

    .line 1258
    .end local v0    # "ac":Landroid/content/pm/PackageParser$Service;
    .end local v1    # "aii":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .end local v3    # "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    .end local v4    # "bingoLauncher":Z
    .end local v5    # "bingoTTSService":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_14
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    goto :goto_4
.end method

.method public setPkgFlag(I)V
    .locals 0
    .param p1, "pkgFlag"    # I

    .prologue
    .line 1283
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1284
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1269
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    .line 1270
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnePlusAppBootInfo{mPkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPkgFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBootFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBlackListEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public updateLastCallingServiceBootPolicy(Ljava/lang/String;)Z
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1307
    iget v4, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 1324
    :goto_0
    return v2

    .line 1311
    :cond_0
    const/4 v2, 0x0

    .line 1312
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1314
    .local v0, "curTime":J
    iget-wide v4, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTime:J

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 1315
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTag:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTag:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1316
    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1317
    const/4 v2, 0x1

    .line 1321
    :cond_1
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLastCallingServiceBootPolicy # ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1322
    :cond_2
    iput-wide v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTime:J

    .line 1323
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateWidgetAppFlag(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1149
    if-eqz p1, :cond_0

    .line 1150
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    or-int/lit16 v0, v0, 0x800

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1151
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1152
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    .line 1154
    :cond_0
    return-void
.end method
