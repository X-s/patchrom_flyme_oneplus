.class public Lcom/android/server/OemPowerUI;
.super Ljava/lang/Object;
.source "OemPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemPowerUI$1;,
        Lcom/android/server/OemPowerUI$oemPowerUIReceiver;,
        Lcom/android/server/OemPowerUI$BatteryChargeInfo;,
        Lcom/android/server/OemPowerUI$ProtectType;
    }
.end annotation


# static fields
.field private static final CHAGRE_VOL_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/authentic"

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "OemPowerUI"


# instance fields
.field private final CHG_PROTECT_CHARGER_VOP:I

.field private final CHG_TYPE_MAX:I

.field private isShowBatteryChargeDialog:Z

.field private mBatteryChargeDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mLowBatteryCount:J

.field private final mReceiver:Lcom/android/server/OemPowerUI$oemPowerUIReceiver;

.field private mShowBatteryChargeDialogType:Lcom/android/server/OemPowerUI$ProtectType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/server/OemPowerUI;->mContext:Landroid/content/Context;

    .line 46
    iput-object v1, p0, Lcom/android/server/OemPowerUI;->mBatteryChargeDialog:Landroid/app/AlertDialog;

    .line 47
    new-instance v0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;-><init>(Lcom/android/server/OemPowerUI;Lcom/android/server/OemPowerUI$1;)V

    iput-object v0, p0, Lcom/android/server/OemPowerUI;->mReceiver:Lcom/android/server/OemPowerUI$oemPowerUIReceiver;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OemPowerUI;->mLowBatteryCount:J

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemPowerUI;->isShowBatteryChargeDialog:Z

    .line 53
    sget-object v0, Lcom/android/server/OemPowerUI$ProtectType;->ProtectTpye_UNKNOW:Lcom/android/server/OemPowerUI$ProtectType;

    iput-object v0, p0, Lcom/android/server/OemPowerUI;->mShowBatteryChargeDialogType:Lcom/android/server/OemPowerUI$ProtectType;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/OemPowerUI;->CHG_PROTECT_CHARGER_VOP:I

    .line 85
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/OemPowerUI;->CHG_TYPE_MAX:I

    .line 222
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/OemPowerUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemPowerUI;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/server/OemPowerUI;->isShowBatteryChargeDialog:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/OemPowerUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemPowerUI;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/server/OemPowerUI;->isShowBatteryChargeDialog:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/OemPowerUI;)Lcom/android/server/OemPowerUI$ProtectType;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemPowerUI;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/OemPowerUI;->mShowBatteryChargeDialogType:Lcom/android/server/OemPowerUI$ProtectType;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/OemPowerUI;Lcom/android/server/OemPowerUI$ProtectType;)Lcom/android/server/OemPowerUI$ProtectType;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemPowerUI;
    .param p1, "x1"    # Lcom/android/server/OemPowerUI$ProtectType;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/OemPowerUI;->mShowBatteryChargeDialogType:Lcom/android/server/OemPowerUI$ProtectType;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/OemPowerUI;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemPowerUI;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/OemPowerUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/OemPowerUI;Lcom/android/server/OemPowerUI$BatteryChargeInfo;)Lcom/android/server/OemPowerUI$ProtectType;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemPowerUI;
    .param p1, "x1"    # Lcom/android/server/OemPowerUI$BatteryChargeInfo;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/OemPowerUI;->checkBatteryChargeDialogType(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)Lcom/android/server/OemPowerUI$ProtectType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/OemPowerUI;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemPowerUI;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/OemPowerUI;->mBatteryChargeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/OemPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemPowerUI;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/OemPowerUI;->mBatteryChargeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private checkBatteryChargeDialogType(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)Lcom/android/server/OemPowerUI$ProtectType;
    .locals 13
    .param p1, "BCInfo"    # Lcom/android/server/OemPowerUI$BatteryChargeInfo;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 154
    sget-object v2, Lcom/android/server/OemPowerUI$ProtectType;->ProtectTpye_UNKNOW:Lcom/android/server/OemPowerUI$ProtectType;

    .line 156
    .local v2, "ret":Lcom/android/server/OemPowerUI$ProtectType;
    const/16 v4, 0xa

    new-array v1, v4, [Lcom/android/server/OemPowerUI$ProtectType;

    sget-object v4, Lcom/android/server/OemPowerUI$ProtectType;->ProtectTpye_UNKNOW:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v4, v1, v10

    sget-object v4, Lcom/android/server/OemPowerUI$ProtectType;->CHARGE_VOL_HIGH:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v4, v1, v7

    sget-object v4, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_CONNECT_ABNORMAL:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v4, v1, v11

    const/4 v4, 0x3

    sget-object v5, Lcom/android/server/OemPowerUI$ProtectType;->SAFE_CHARGE_TIMEOUT:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v5, v1, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_VOL_HIGH:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v5, v1, v4

    sget-object v4, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_HIGHER:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v4, v1, v12

    const/4 v4, 0x6

    sget-object v5, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_LOWEST:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v5, v1, v4

    const/4 v4, 0x7

    sget-object v5, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_LOWER:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v5, v1, v4

    const/16 v4, 0x8

    sget-object v5, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_LOW:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v5, v1, v4

    const/16 v4, 0x9

    sget-object v5, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_HIGH:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v5, v1, v4

    .line 169
    .local v1, "chargeTypeList":[Lcom/android/server/OemPowerUI$ProtectType;
    const-string v4, "/sys/class/power_supply/battery/authentic"

    invoke-static {v4}, Lcom/android/server/OemPowerUI;->readFileByLines(Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, "chargeType":I
    if-lez v0, :cond_0

    .line 171
    const-string v4, "OemPowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ExceptType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    if-lez v0, :cond_1

    const/16 v4, 0xa

    if-ge v0, v4, :cond_1

    .line 174
    aget-object v2, v1, v0

    .line 177
    :cond_1
    if-eqz p1, :cond_2

    .line 178
    # getter for: Lcom/android/server/OemPowerUI$BatteryChargeInfo;->plugged:I
    invoke-static {p1}, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->access$100(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I

    move-result v4

    if-ge v4, v7, :cond_3

    .line 179
    iput-wide v8, p0, Lcom/android/server/OemPowerUI;->mLowBatteryCount:J

    .line 219
    :cond_2
    :goto_0
    return-object v2

    .line 181
    :cond_3
    # getter for: Lcom/android/server/OemPowerUI$BatteryChargeInfo;->status:I
    invoke-static {p1}, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->access$200(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I

    move-result v4

    if-ne v4, v12, :cond_4

    # getter for: Lcom/android/server/OemPowerUI$BatteryChargeInfo;->health:I
    invoke-static {p1}, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->access$300(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I

    move-result v4

    if-ne v4, v11, :cond_4

    # getter for: Lcom/android/server/OemPowerUI$BatteryChargeInfo;->level:I
    invoke-static {p1}, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->access$400(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_4

    .line 184
    sget-object v2, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_CHARGE_FULL:Lcom/android/server/OemPowerUI$ProtectType;

    .line 186
    const-string v4, "OemPowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery charge 100%  level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/OemPowerUI$BatteryChargeInfo;->level:I
    invoke-static {p1}, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->access$400(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " temperature="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/OemPowerUI$BatteryChargeInfo;->temperature:I
    invoke-static {p1}, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->access$500(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " voltage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/OemPowerUI$BatteryChargeInfo;->voltage:I
    invoke-static {p1}, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->access$600(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " plugged="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/OemPowerUI$BatteryChargeInfo;->plugged:I
    invoke-static {p1}, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->access$100(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " chargeType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_4
    # getter for: Lcom/android/server/OemPowerUI$BatteryChargeInfo;->level:I
    invoke-static {p1}, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->access$400(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I

    move-result v4

    if-nez v4, :cond_5

    # getter for: Lcom/android/server/OemPowerUI$BatteryChargeInfo;->voltage:I
    invoke-static {p1}, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->access$600(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I

    move-result v4

    const/16 v5, 0xd5c

    if-ge v4, v5, :cond_5

    .line 196
    iget-wide v4, p0, Lcom/android/server/OemPowerUI;->mLowBatteryCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/OemPowerUI;->mLowBatteryCount:J

    .line 203
    iget-wide v4, p0, Lcom/android/server/OemPowerUI;->mLowBatteryCount:J

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 204
    iput-wide v8, p0, Lcom/android/server/OemPowerUI;->mLowBatteryCount:J

    .line 205
    const-string v4, "OemPowerUI"

    const-string v5, "Attention:the battery is 0% and the phone will be shutdown soon"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v4, "OemPowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The current voltage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/OemPowerUI$BatteryChargeInfo;->voltage:I
    invoke-static {p1}, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->access$600(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v3, "shutdown":Landroid/content/Intent;
    const-string v4, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    iget-object v4, p0, Lcom/android/server/OemPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 214
    .end local v3    # "shutdown":Landroid/content/Intent;
    :cond_5
    iput-wide v8, p0, Lcom/android/server/OemPowerUI;->mLowBatteryCount:J

    goto/16 :goto_0
.end method

.method public static readFileByLines(Ljava/lang/String;)I
    .locals 11
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 370
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 372
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 373
    .local v5, "result":I
    const/4 v6, 0x0

    .line 376
    .local v6, "tempString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 381
    if-eqz v4, :cond_3

    .line 383
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 390
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 392
    :try_start_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v5

    .line 399
    :cond_1
    :goto_1
    return v5

    .line 384
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e1":Ljava/io/IOException;
    const-string v7, "OemPowerUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readFileByLines io close exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 386
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 378
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v7, "OemPowerUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readFileByLines io exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 381
    if-eqz v3, :cond_0

    .line 383
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 384
    :catch_2
    move-exception v1

    .line 385
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v7, "OemPowerUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readFileByLines io close exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_2

    .line 383
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 386
    :cond_2
    :goto_4
    throw v7

    .line 384
    :catch_3
    move-exception v1

    .line 385
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v8, "OemPowerUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readFileByLines io close exception :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 393
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v7, "OemPowerUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readFileByLines NumberFormatException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 381
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 378
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_3
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_0
.end method


# virtual methods
.method public start(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/OemPowerUI;->mContext:Landroid/content/Context;

    .line 150
    iget-object v0, p0, Lcom/android/server/OemPowerUI;->mReceiver:Lcom/android/server/OemPowerUI$oemPowerUIReceiver;

    invoke-virtual {v0}, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->init()V

    .line 151
    return-void
.end method
