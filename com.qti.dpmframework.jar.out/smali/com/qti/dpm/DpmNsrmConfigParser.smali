.class public Lcom/qti/dpm/DpmNsrmConfigParser;
.super Ljava/lang/Object;
.source "DpmNsrmConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;,
        Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;,
        Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;,
        Lcom/qti/dpm/DpmNsrmConfigParser$Version;
    }
.end annotation


# static fields
.field static final NSRM_APPS_LIST_TABLE_COLUMNS:Ljava/lang/String; = " appName"

.field static final NSRM_APPS_LIST_TABLE_COLUMNS_DEF:Ljava/lang/String; = " appName text"

.field static final NSRM_APPS_LIST_TABLE_NAME:Ljava/lang/String; = "nsrmAppsList"

.field static final NSRM_APP_LEARNED_INFO_TABLE_COLUMNS:Ljava/lang/String; = "appName, uid, currMode, cc1, cc2, npcc2, goodCnt, badCnt, decisionMade, reCountCC2, dmTimestamp, appLearningTime1, appLearningTime2"

.field static final NSRM_APP_LEARNED_INFO_TABLE_COLUMNS_DEF:Ljava/lang/String; = "appName text, uid integer, currMode integer, cc1 integer, cc2 integer, npcc2 integer, goodCnt integer, badCnt integer, decisionMade integer, reCountCC2 integer, dmTimestamp integer, appLearningTime1 integer, appLearningTime2 integer"

.field static final NSRM_APP_LEARNED_INFO_TABLE_NAME:Ljava/lang/String; = "nsrmAppLearnedInfo"

.field static final NSRM_CONFIG_DB_FILE:Ljava/lang/String; = "/data/dpm/nsrm/nsrmConfig.db"

.field static final NSRM_CONFIG_PARAMS_TABLE_COLUMNS:Ljava/lang/String; = "version, topen, tsyncSocketSetup, tsyncWrite, suidMode, opMode, eaqsrdt, goodThr, badThr, tConnect, tDecisionMade, minThr, tMargin, tMinIdle, tQuery, tDmThreshold, recheckThr, dNsrmEnable"

.field static final NSRM_CONFIG_PARAMS_TABLE_COLUMNS_DEF:Ljava/lang/String; = " version text, topen integer, tsyncSocketSetup integer, tsyncWrite integer, suidMode integer, opMode integer, eaqsrdt integer, goodThr double, badThr double, tConnect integer, tDecisionMade integer, minThr integer, tMargin integer, tMinIdle integer, tQuery integer, tDmThreshold integer, recheckThr double, dNsrmEnable integer"

.field static final NSRM_CONFIG_PARAMS_TABLE_NAME:Ljava/lang/String; = "nsrmConfigParams"

.field private static final NSRM_DEFAULT_APP_LEARNING_ENABLED:I = 0x0

.field private static final NSRM_DEFAULT_APP_LIST_QUERY_TIME:I = 0x12c

.field private static final NSRM_DEFAULT_BAD_THR:D = 3.0

.field private static final NSRM_DEFAULT_CONNECT_COUNT_TIME:I = 0x3840

.field private static final NSRM_DEFAULT_DECISION_MADE_THRESHOLD_TIME:I = 0x69780

.field private static final NSRM_DEFAULT_DECISION_MADE_TIME:I = 0x278d00

.field private static final NSRM_DEFAULT_EAQSRDT_TIME:I = 0x3c

.field private static final NSRM_DEFAULT_GOOD_THR:D = 1.0

.field private static final NSRM_DEFAULT_MARGIN_TIME:I = 0x3c

.field private static final NSRM_DEFAULT_MIN_IDLE_TIME:I = 0x258

.field private static final NSRM_DEFAULT_MIN_THR:I = 0x5

.field private static final NSRM_DEFAULT_OP_MODE:I = 0x0

.field private static final NSRM_DEFAULT_RECHECK_THR:D = 1.1

.field private static final NSRM_DEFAULT_TOPEN_TIME:I = 0x1e

.field private static final NSRM_DEFAULT_TSYNC_TIME:I = 0x4b0

.field private static final NSRM_DEFAULT_UID_MODE:I = 0x0

.field private static final NSRM_LOWER_LIMIT_APP_LIST_QUERY_TIME:I = 0x3c

.field private static final NSRM_LOWER_LIMIT_BAD_THR:D = 1.0

.field private static final NSRM_LOWER_LIMIT_CONNECT_COUNT_TIME:I = 0x1

.field private static final NSRM_LOWER_LIMIT_DECISION_MADE_THRESHOLD_TIME:I = 0x15180

.field private static final NSRM_LOWER_LIMIT_DECISION_MADE_TIME:I = 0x15180

.field private static final NSRM_LOWER_LIMIT_MARGIN_TIME:I = 0x1

.field private static final NSRM_LOWER_LIMIT_MIN_IDLE_TIME:I = 0x1

.field private static final NSRM_LOWER_LIMIT_MIN_THR:I = 0x0

.field private static final NSRM_LOWER_LIMIT_RECHECK_THR:D = 1.0

.field private static final NSRM_MAX_MCC_MNC_ENTRIES:I = 0xa

.field private static final NSRM_MAX_NUM_APPS:I = 0x400

.field private static final NSRM_MAX_PORT_NTO_ENTRIES:I = 0x32

.field private static final NSRM_MAX_UNSIGNED_SHORT_NUM:I = 0xffff

.field static final NSRM_NTO_PORTS_TABLE_COLUMNS:Ljava/lang/String; = "mccmnc, port, nto"

.field static final NSRM_NTO_PORTS_TABLE_COLUMNS_DEF:Ljava/lang/String; = " mccmnc text, port integer, nto integer"

.field static final NSRM_NTO_PORTS_TABLE_NAME:Ljava/lang/String; = "nsrmNTOs"

.field private static final NSRM_OP_MODE_EXCLUSION:I = 0x1

.field private static final NSRM_OP_MODE_INCLUSION:I = 0x0

.field private static final NSRM_UID_MODE_AGGRESSIVE:I = 0x1

.field private static final NSRM_UID_MODE_CONSERVATIVE:I = 0x0

.field private static final NSRM_UPPER_LIMIT_APP_LIST_QUERY_TIME:I = 0xe10

.field private static final NSRM_UPPER_LIMIT_BAD_THR:D = 10.0

.field private static final NSRM_UPPER_LIMIT_CONNECT_COUNT_TIME:I = 0x15180

.field private static final NSRM_UPPER_LIMIT_DECISION_MADE_THRESHOLD_TIME:I = 0x1e13380

.field private static final NSRM_UPPER_LIMIT_DECISION_MADE_TIME:I = 0x1e13380

.field private static final NSRM_UPPER_LIMIT_GOOD_THR:D = 10.0

.field private static final NSRM_UPPER_LIMIT_MARGIN_TIME:I = 0x708

.field private static final NSRM_UPPER_LIMIT_MIN_IDLE_TIME:I = 0xe10

.field private static final NSRM_UPPER_LIMIT_MIN_THR:I = 0x64

.field private static final NSRM_UPPER_LIMIT_NTO_TIME:I = 0x15180

.field private static final NSRM_UPPER_LIMIT_RECHECK_THR:D = 10.0

.field private static final NSRM_UPPER_LIMIT_TOPEN_TIME:I = 0x15180

.field private static final NSRM_UPPER_LIMIT_TSYNC_TIME:I = 0x15180

.field static final SUB_TYPE:Ljava/lang/String; = "DPM:NSRM:PLCY"

.field private static final TAG_NSRM:Ljava/lang/String; = "Nsrm"

.field private static final TAG_ROOT:Ljava/lang/String; = "NsrmPolicy"

.field private static final TAG_VERSION:Ljava/lang/String; = "Version"

.field private static final nsrmConfigFbFileLoc:Ljava/lang/String; = "/system/etc/dpm/nsrm/NsrmConfiguration.xml"

.field private static final nsrmConfigFileLoc:Ljava/lang/String; = "/data/dpm/nsrm/NsrmConfiguration.xml"


# instance fields
.field ismDbOpen:Z

.field mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field nsrmNode:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-boolean v0, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->ismDbOpen:Z

    .line 394
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mContext:Landroid/content/Context;

    .line 395
    iput-boolean v0, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->ismDbOpen:Z

    .line 396
    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmConfigParser;->createNsrmConfigDb()V

    .line 393
    return-void
.end method

.method private appExists(Ljava/lang/String;)Z
    .locals 8
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 234
    const/4 v1, -0x1

    .line 235
    .local v1, "count":I
    const/4 v0, 0x0

    .line 237
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "SELECT COUNT(*) FROM nsrmAppLearnedInfo WHERE appName = ?"

    .line 241
    .local v2, "query":Ljava/lang/String;
    iget-object v5, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    .line 242
    return v4

    .line 246
    :cond_0
    iget-object v5, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 247
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 250
    :cond_1
    if-lez v1, :cond_3

    .line 253
    :goto_0
    if-eqz v0, :cond_2

    .line 254
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_2
    return v3

    :cond_3
    move v3, v4

    goto :goto_0

    .line 252
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v2    # "query":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 253
    if-eqz v0, :cond_4

    .line 254
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_4
    throw v3
.end method

.method private createNsrmConfigDb()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 429
    :try_start_0
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "/data/dpm/nsrm/nsrmConfig.db"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 430
    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS nsrmConfigParams (id INTEGER PRIMARY KEY,  version text, topen integer, tsyncSocketSetup integer, tsyncWrite integer, suidMode integer, opMode integer, eaqsrdt integer, goodThr double, badThr double, tConnect integer, tDecisionMade integer, minThr integer, tMargin integer, tMinIdle integer, tQuery integer, tDmThreshold integer, recheckThr double, dNsrmEnable integer );"

    .line 432
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 433
    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS nsrmAppsList (id INTEGER PRIMARY KEY,  appName text );"

    .line 435
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS nsrmNTOs (id INTEGER PRIMARY KEY,  mccmnc text, port integer, nto integer );"

    .line 438
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 439
    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS nsrmAppLearnedInfo (id INTEGER PRIMARY KEY, appName text, uid integer, currMode integer, cc1 integer, cc2 integer, npcc2 integer, goodCnt integer, badCnt integer, decisionMade integer, reCountCC2 integer, dmTimestamp integer, appLearningTime1 integer, appLearningTime2 integer );"

    .line 441
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v1    # "sql":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->ismDbOpen:Z

    .line 427
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t create nsrmConfigDb ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iput-boolean v6, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->ismDbOpen:Z

    goto :goto_0
.end method

.method private min(II)I
    .locals 0
    .param p1, "num1"    # I
    .param p2, "num2"    # I

    .prologue
    .line 1203
    if-gt p1, p2, :cond_0

    .end local p1    # "num1":I
    :goto_0
    return p1

    .restart local p1    # "num1":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private parseNsrmConfig(Lorg/w3c/dom/Element;Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;)I
    .locals 40
    .param p1, "elem"    # Lorg/w3c/dom/Element;
    .param p2, "configData"    # Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;

    .prologue
    .line 527
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "parseNsrmConfig"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-static {}, Lcom/qti/dpm/DpmNsrmConfigParser$Version;->getString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->version:Ljava/lang/String;

    .line 531
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string/jumbo v2, "GateOpenTime"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    .line 535
    .local v36, "tOpenTime":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 536
    const/4 v2, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "nodeValue":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 539
    const/4 v2, 0x0

    const v4, 0x15180

    .line 538
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v29

    .line 540
    .local v29, "ret":I
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_0

    .line 542
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid GateOpenTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return v29

    .line 545
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tOpenTime:I

    .line 554
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tOpenTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tOpenTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string/jumbo v2, "GateSyncSocketSetupTime"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    .line 558
    .local v38, "tsyncSocketSetupTime":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 559
    const/4 v2, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 560
    if-eqz v3, :cond_4

    .line 562
    const/4 v2, 0x0

    const v4, 0x15180

    .line 561
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v29

    .line 563
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_3

    .line 565
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid GateSyncSocketSetupTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return v29

    .line 547
    .end local v29    # "ret":I
    .end local v38    # "tsyncSocketSetupTime":Lorg/w3c/dom/NodeList;
    :cond_1
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No GateOpenTime value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const/4 v2, -0x3

    return v2

    .line 551
    .end local v3    # "nodeValue":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many GateOpenTime tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const/4 v2, -0x3

    return v2

    .line 568
    .restart local v3    # "nodeValue":Ljava/lang/String;
    .restart local v29    # "ret":I
    .restart local v38    # "tsyncSocketSetupTime":Lorg/w3c/dom/NodeList;
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tSyncSocketSetupTime:I

    .line 577
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GateSyncSocketSetupTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tSyncSocketSetupTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string/jumbo v2, "GateSyncSocketWriteTime"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v39

    .line 581
    .local v39, "tsyncSocketWriteTime":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v39 .. v39}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    .line 582
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 583
    if-eqz v3, :cond_7

    .line 585
    const/4 v2, 0x0

    const v4, 0x15180

    .line 584
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v29

    .line 586
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_6

    .line 588
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid GateSyncSocketWriteTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return v29

    .line 570
    .end local v39    # "tsyncSocketWriteTime":Lorg/w3c/dom/NodeList;
    :cond_4
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No GateSyncSocketSetupTime value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const/4 v2, -0x3

    return v2

    .line 574
    :cond_5
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many GateSyncSocketSetupTime tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const/4 v2, -0x3

    return v2

    .line 591
    .restart local v39    # "tsyncSocketWriteTime":Lorg/w3c/dom/NodeList;
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tSyncSocketWriteTime:I

    .line 600
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GateSyncSocketWriteTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tSyncSocketWriteTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string/jumbo v2, "EAQSRDT"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 604
    .local v14, "eaqsrdt":Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    .line 605
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 606
    if-eqz v3, :cond_a

    .line 608
    const/4 v2, 0x0

    const v4, 0x15180

    .line 607
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v29

    .line 609
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_9

    .line 611
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid EAQSRDT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    return v29

    .line 593
    .end local v14    # "eaqsrdt":Lorg/w3c/dom/NodeList;
    :cond_7
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No GateSyncSocketWriteTime value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const/4 v2, -0x3

    return v2

    .line 597
    :cond_8
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many GateSyncSocketWriteTime tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const/4 v2, -0x3

    return v2

    .line 614
    .restart local v14    # "eaqsrdt":Lorg/w3c/dom/NodeList;
    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->eaqsrdt:I

    .line 623
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "eaqsrdt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->eaqsrdt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string/jumbo v2, "SharedUIDMode"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 627
    .local v30, "sharedUidMode":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    .line 628
    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 629
    if-eqz v3, :cond_e

    .line 630
    const-string/jumbo v2, "Conservative"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 631
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->suidMode:I

    .line 647
    :goto_0
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "suidMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->suidMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string/jumbo v2, "AppList"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 651
    .local v8, "appList":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    .line 652
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .line 653
    .local v11, "attrs":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    .line 654
    const-string/jumbo v2, "Type"

    invoke-interface {v11, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 655
    .local v24, "opMode":Lorg/w3c/dom/Node;
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 656
    if-eqz v3, :cond_12

    .line 657
    const-string/jumbo v2, "EXCLUSION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 658
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->opMode:I

    .line 673
    :goto_1
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "opMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->opMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string/jumbo v4, "AppName"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 676
    .local v10, "appNames":Lorg/w3c/dom/NodeList;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/16 v4, 0x400

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_16

    .line 677
    move/from16 v0, v16

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 678
    .local v9, "appName":Ljava/lang/String;
    if-eqz v9, :cond_14

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_14

    .line 679
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->apps:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "appName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 616
    .end local v8    # "appList":Lorg/w3c/dom/NodeList;
    .end local v9    # "appName":Ljava/lang/String;
    .end local v10    # "appNames":Lorg/w3c/dom/NodeList;
    .end local v11    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v16    # "i":I
    .end local v24    # "opMode":Lorg/w3c/dom/Node;
    .end local v30    # "sharedUidMode":Lorg/w3c/dom/NodeList;
    :cond_a
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No EAQSRDT value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const/4 v2, -0x3

    return v2

    .line 620
    :cond_b
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many EAQSRDT tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const/4 v2, -0x3

    return v2

    .line 632
    .restart local v30    # "sharedUidMode":Lorg/w3c/dom/NodeList;
    :cond_c
    const-string/jumbo v2, "Aggressive"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 633
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->suidMode:I

    goto/16 :goto_0

    .line 635
    :cond_d
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid UID Mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "Invalid SharedUIDMode value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const/4 v2, -0x3

    return v2

    .line 640
    :cond_e
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No SharedUIDMode value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const/4 v2, -0x3

    return v2

    .line 644
    :cond_f
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many SharedUIDMode tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v2, -0x3

    return v2

    .line 659
    .restart local v8    # "appList":Lorg/w3c/dom/NodeList;
    .restart local v11    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .restart local v24    # "opMode":Lorg/w3c/dom/Node;
    :cond_10
    const-string/jumbo v2, "INCLUSION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 660
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->opMode:I

    goto/16 :goto_1

    .line 662
    :cond_11
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid OP Mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const/4 v2, -0x3

    return v2

    .line 666
    :cond_12
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No AppList Type Attribute value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const/4 v2, -0x3

    return v2

    .line 670
    .end local v24    # "opMode":Lorg/w3c/dom/Node;
    :cond_13
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many AppList Type Attribute tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const/4 v2, -0x3

    return v2

    .line 682
    .restart local v9    # "appName":Ljava/lang/String;
    .restart local v10    # "appNames":Lorg/w3c/dom/NodeList;
    .restart local v16    # "i":I
    .restart local v24    # "opMode":Lorg/w3c/dom/Node;
    :cond_14
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "ignoring this node appName is null or empty"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 687
    .end local v9    # "appName":Ljava/lang/String;
    .end local v10    # "appNames":Lorg/w3c/dom/NodeList;
    .end local v11    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v16    # "i":I
    .end local v24    # "opMode":Lorg/w3c/dom/Node;
    :cond_15
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many AppList tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const/4 v2, -0x3

    return v2

    .line 691
    .restart local v10    # "appNames":Lorg/w3c/dom/NodeList;
    .restart local v11    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .restart local v16    # "i":I
    .restart local v24    # "opMode":Lorg/w3c/dom/Node;
    :cond_16
    const-string/jumbo v2, "MCC_MNC"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 692
    .local v20, "mccMncList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/16 v4, 0xa

    if-le v2, v4, :cond_17

    .line 693
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Too many MCC_MNC entries "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const/4 v2, -0x3

    return v2

    .line 696
    :cond_17
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_1e

    .line 697
    const/16 v16, 0x0

    :goto_4
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_1e

    .line 699
    new-instance v22, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;-><init>(Lcom/qti/dpm/DpmNsrmConfigParser;)V

    .line 701
    .local v22, "newNode":Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .line 702
    const-string/jumbo v2, "value"

    invoke-interface {v11, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    .line 703
    .local v19, "mccMnc":Lorg/w3c/dom/Node;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-set1(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;Ljava/lang/String;)Ljava/lang/String;

    .line 705
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "Default"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 706
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateInteger(Ljava/lang/String;)I

    move-result v29

    .line 707
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_18

    .line 708
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid MCCMNC value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v22 .. v22}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-get1(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v2, -0x3

    return v2

    .line 711
    :cond_18
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_19

    .line 712
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MCCMNC value exceeds max limit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v22 .. v22}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-get1(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v2, -0x3

    return v2

    .line 718
    :cond_19
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string/jumbo v4, "port"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    .line 719
    .local v26, "portList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/16 v4, 0x32

    if-le v2, v4, :cond_1a

    .line 720
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Too many port nto entries "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const/4 v2, -0x3

    return v2

    .line 723
    :cond_1a
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 724
    .local v18, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_5
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_1d

    .line 725
    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v27

    .line 726
    .local v27, "portNto":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v2, "value"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v25

    .line 727
    .local v25, "port":Lorg/w3c/dom/Node;
    const-string/jumbo v2, "NTO"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v23

    .line 729
    .local v23, "nto":Lorg/w3c/dom/Node;
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0xffff

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v29

    .line 730
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_1b

    .line 731
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid PORT number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return v29

    .line 735
    :cond_1b
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x15180

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v29

    .line 736
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_1c

    .line 737
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid NTO value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    return v29

    .line 740
    :cond_1c
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 742
    .end local v23    # "nto":Lorg/w3c/dom/Node;
    .end local v25    # "port":Lorg/w3c/dom/Node;
    .end local v27    # "portNto":Lorg/w3c/dom/NamedNodeMap;
    :cond_1d
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-set0(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 743
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->mccMnc:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    const-string/jumbo v4, "DPM:NSRM:PLCY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MCCMNC = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->mccMnc:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;

    invoke-static {v2}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-get1(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string/jumbo v4, "DPM:NSRM:PLCY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PORT NTO map = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->mccMnc:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;

    invoke-static {v2}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-get0(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 750
    .end local v17    # "j":I
    .end local v18    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v19    # "mccMnc":Lorg/w3c/dom/Node;
    .end local v22    # "newNode":Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;
    .end local v26    # "portList":Lorg/w3c/dom/NodeList;
    :cond_1e
    const-string/jumbo v2, "GoodThr"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 751
    .local v15, "goodThr":Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_21

    .line 752
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 753
    if-eqz v3, :cond_20

    .line 754
    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateDoubleByRange(Ljava/lang/String;DD)I

    move-result v29

    .line 755
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_1f

    .line 756
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p2

    iput-wide v4, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->goodThr:D

    .line 757
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not in valid range: goodThr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :goto_6
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "goodThr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->goodThr:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string/jumbo v2, "BadThr"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 775
    .local v12, "badThr":Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_24

    .line 776
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 777
    if-eqz v3, :cond_23

    .line 778
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateDoubleByRange(Ljava/lang/String;DD)I

    move-result v29

    .line 779
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_22

    .line 780
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p2

    iput-wide v4, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->badThr:D

    .line 781
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not in valid range: badThr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :goto_7
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "badThr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->badThr:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string/jumbo v2, "TConnect"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v31

    .line 799
    .local v31, "tConnect":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_27

    .line 800
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 801
    if-eqz v3, :cond_26

    .line 802
    const/4 v2, 0x1

    const v4, 0x15180

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v29

    .line 803
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_25

    .line 804
    const/16 v2, 0x3840

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tConnect:I

    .line 805
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not in valid range: tConnect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :goto_8
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tConnect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tConnect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string/jumbo v2, "TDecisionMade"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v32

    .line 824
    .local v32, "tDecisionMade":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2a

    .line 825
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 826
    if-eqz v3, :cond_29

    .line 827
    const v2, 0x15180

    .line 828
    const v4, 0x1e13380

    .line 827
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v29

    .line 829
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_28

    .line 830
    const v2, 0x278d00

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDecisionMade:I

    .line 831
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not in valid range: tDecisionMade = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :goto_9
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tDecisionMade = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDecisionMade:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string/jumbo v2, "MinThr"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 849
    .local v21, "minThr":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2d

    .line 850
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 851
    if-eqz v3, :cond_2c

    .line 852
    const/4 v2, 0x0

    const/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v29

    .line 853
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_2b

    .line 854
    const/4 v2, 0x5

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->minThr:I

    .line 858
    :goto_a
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "minThr nodeValue= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "minThr= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->minThr:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string/jumbo v2, "TMargin"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    .line 873
    .local v34, "tMargin":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_30

    .line 874
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 875
    if-eqz v3, :cond_2f

    .line 876
    const/4 v2, 0x1

    const/16 v4, 0x708

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v29

    .line 877
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_2e

    .line 878
    const/16 v2, 0x3c

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tMargin:I

    .line 882
    :goto_b
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tMargin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string/jumbo v2, "TMinIdle"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    .line 896
    .local v35, "tMinIdle":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_33

    .line 897
    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 898
    if-eqz v3, :cond_32

    .line 899
    const/4 v2, 0x1

    const/16 v4, 0xe10

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v29

    .line 900
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_31

    .line 901
    const/16 v2, 0x258

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tMinIdle:I

    .line 905
    :goto_c
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tMinIdle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string/jumbo v2, "TQuery"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v37

    .line 919
    .local v37, "tQuery":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_36

    .line 920
    const/4 v2, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 921
    if-eqz v3, :cond_35

    .line 922
    const/16 v2, 0x3c

    const/16 v4, 0xe10

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v29

    .line 923
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_34

    .line 924
    const/16 v2, 0x12c

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tQuery:I

    .line 928
    :goto_d
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tQuery = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string/jumbo v2, "TDmThreshold"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    .line 942
    .local v33, "tDmThreshold":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_39

    .line 943
    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 944
    if-eqz v3, :cond_38

    .line 945
    const v2, 0x15180

    .line 946
    const v4, 0x1e13380

    .line 945
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v29

    .line 947
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_37

    .line 948
    const v2, 0x69780

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDmThreshold:I

    .line 949
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not in valid range: tDmThreshold = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :goto_e
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tDmThreshold = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDmThreshold:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string/jumbo v2, "RecheckThr"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 967
    .local v28, "recheckThr":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3c

    .line 968
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 969
    if-eqz v3, :cond_3b

    .line 970
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateDoubleByRange(Ljava/lang/String;DD)I

    move-result v29

    .line 971
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_3a

    .line 972
    const-wide v4, 0x3ff199999999999aL    # 1.1

    move-object/from16 v0, p2

    iput-wide v4, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->recheckThr:D

    .line 976
    :goto_f
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recheckThr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string/jumbo v2, "DNsrmEnable"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 990
    .local v13, "dNsrmEnable":Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3f

    .line 991
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 992
    if-eqz v3, :cond_3e

    .line 993
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v29

    .line 994
    const/16 v2, 0x3e8

    move/from16 v0, v29

    if-eq v0, v2, :cond_3d

    .line 995
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->dNsrmEnable:I

    .line 999
    :goto_10
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dNsrmEnable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/qti/dpm/DpmNsrmConfigParser;->updateNsrmDb(Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;)I

    move-result v2

    return v2

    .line 759
    .end local v12    # "badThr":Lorg/w3c/dom/NodeList;
    .end local v13    # "dNsrmEnable":Lorg/w3c/dom/NodeList;
    .end local v21    # "minThr":Lorg/w3c/dom/NodeList;
    .end local v28    # "recheckThr":Lorg/w3c/dom/NodeList;
    .end local v31    # "tConnect":Lorg/w3c/dom/NodeList;
    .end local v32    # "tDecisionMade":Lorg/w3c/dom/NodeList;
    .end local v33    # "tDmThreshold":Lorg/w3c/dom/NodeList;
    .end local v34    # "tMargin":Lorg/w3c/dom/NodeList;
    .end local v35    # "tMinIdle":Lorg/w3c/dom/NodeList;
    .end local v37    # "tQuery":Lorg/w3c/dom/NodeList;
    :cond_1f
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-object/from16 v0, p2

    iput-wide v4, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->goodThr:D

    goto/16 :goto_6

    .line 764
    :cond_20
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No goodThr found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const/4 v2, -0x3

    return v2

    .line 769
    :cond_21
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many goodThr"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const/4 v2, -0x3

    return v2

    .line 783
    .restart local v12    # "badThr":Lorg/w3c/dom/NodeList;
    :cond_22
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-object/from16 v0, p2

    iput-wide v4, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->badThr:D

    goto/16 :goto_7

    .line 788
    :cond_23
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No badThr found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const/4 v2, -0x3

    return v2

    .line 793
    :cond_24
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many badThr"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const/4 v2, -0x3

    return v2

    .line 807
    .restart local v31    # "tConnect":Lorg/w3c/dom/NodeList;
    :cond_25
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tConnect:I

    goto/16 :goto_8

    .line 813
    :cond_26
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No tConnect found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const/4 v2, -0x3

    return v2

    .line 818
    :cond_27
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many tConnect"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const/4 v2, -0x3

    return v2

    .line 833
    .restart local v32    # "tDecisionMade":Lorg/w3c/dom/NodeList;
    :cond_28
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDecisionMade:I

    goto/16 :goto_9

    .line 838
    :cond_29
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No tDecisionMade found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const/4 v2, -0x3

    return v2

    .line 843
    :cond_2a
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many tDecisionMade"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const/4 v2, -0x3

    return v2

    .line 856
    .restart local v21    # "minThr":Lorg/w3c/dom/NodeList;
    :cond_2b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->minThr:I

    goto/16 :goto_a

    .line 862
    :cond_2c
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No minThr found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const/4 v2, -0x3

    return v2

    .line 867
    :cond_2d
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many minThr"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const/4 v2, -0x3

    return v2

    .line 880
    .restart local v34    # "tMargin":Lorg/w3c/dom/NodeList;
    :cond_2e
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tMargin:I

    goto/16 :goto_b

    .line 885
    :cond_2f
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No tMargin found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const/4 v2, -0x3

    return v2

    .line 890
    :cond_30
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many tMargin"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const/4 v2, -0x3

    return v2

    .line 903
    .restart local v35    # "tMinIdle":Lorg/w3c/dom/NodeList;
    :cond_31
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tMinIdle:I

    goto/16 :goto_c

    .line 908
    :cond_32
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No tMinIdle found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const/4 v2, -0x3

    return v2

    .line 913
    :cond_33
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many tMinIdle"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const/4 v2, -0x3

    return v2

    .line 926
    .restart local v37    # "tQuery":Lorg/w3c/dom/NodeList;
    :cond_34
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tQuery:I

    goto/16 :goto_d

    .line 931
    :cond_35
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No tQuery found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const/4 v2, -0x3

    return v2

    .line 936
    :cond_36
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many tQuery"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const/4 v2, -0x3

    return v2

    .line 951
    .restart local v33    # "tDmThreshold":Lorg/w3c/dom/NodeList;
    :cond_37
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDmThreshold:I

    goto/16 :goto_e

    .line 956
    :cond_38
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No tDmThreshold found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const/4 v2, -0x3

    return v2

    .line 961
    :cond_39
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many tDmThreshold"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const/4 v2, -0x3

    return v2

    .line 974
    .restart local v28    # "recheckThr":Lorg/w3c/dom/NodeList;
    :cond_3a
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-object/from16 v0, p2

    iput-wide v4, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->recheckThr:D

    goto/16 :goto_f

    .line 979
    :cond_3b
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No recheckThr found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const/4 v2, -0x3

    return v2

    .line 984
    :cond_3c
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many recheckThr"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const/4 v2, -0x3

    return v2

    .line 997
    .restart local v13    # "dNsrmEnable":Lorg/w3c/dom/NodeList;
    :cond_3d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->dNsrmEnable:I

    goto/16 :goto_10

    .line 1002
    :cond_3e
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No dNsrmEnable found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const/4 v2, -0x3

    return v2

    .line 1007
    :cond_3f
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many dNsrmEnable"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const/4 v2, -0x3

    return v2
.end method

.method private parseNsrmFile(Ljava/lang/String;)I
    .locals 16
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1122
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    const-string/jumbo v14, "parseNsrmFile"

    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :try_start_0
    new-instance v1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v13}, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;-><init>(Lcom/qti/dpm/DpmNsrmConfigParser;Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;)V

    .line 1126
    .local v1, "configData":Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 1127
    .local v3, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 1128
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1130
    .local v4, "doc":Lorg/w3c/dom/Document;
    if-nez v4, :cond_0

    .line 1131
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    const-string/jumbo v14, "Malformed NSRM xml file"

    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const/4 v13, -0x3

    return v13

    .line 1136
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validatePolicyTree(Lorg/w3c/dom/Document;)I

    move-result v10

    .line 1137
    .local v10, "ret":I
    const/16 v13, 0x3e8

    if-eq v13, v10, :cond_1

    .line 1138
    return v10

    .line 1141
    :cond_1
    const-string/jumbo v13, "Nsrm"

    invoke-interface {v4, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 1142
    .local v9, "nsrmNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    const/4 v14, 0x1

    if-lt v13, v14, :cond_5

    .line 1144
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v8, v13, :cond_4

    .line 1146
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/qti/dpm/DpmNsrmConfigParser;->nsrmNode:Lorg/w3c/dom/Element;

    .line 1147
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/dpm/DpmNsrmConfigParser;->nsrmNode:Lorg/w3c/dom/Element;

    const-string/jumbo v14, "Version"

    invoke-interface {v13, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 1148
    .local v12, "versionNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 1151
    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 1156
    .local v11, "version":Ljava/lang/String;
    invoke-static {v11}, Lcom/qti/dpm/DpmNsrmConfigParser$Version;->matchVersion(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1158
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    .line 1159
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parsing Nsrm node "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1160
    const-string/jumbo v15, ", version "

    .line 1159
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1160
    invoke-static {}, Lcom/qti/dpm/DpmNsrmConfigParser$Version;->getString()Ljava/lang/String;

    move-result-object v15

    .line 1159
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1158
    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/dpm/DpmNsrmConfigParser;->nsrmNode:Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1}, Lcom/qti/dpm/DpmNsrmConfigParser;->parseNsrmConfig(Lorg/w3c/dom/Element;Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;)I

    move-result v13

    return v13

    .line 1165
    :cond_2
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    .line 1166
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Version "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1167
    const-string/jumbo v15, " from Nsrm node "

    .line 1166
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1168
    const-string/jumbo v15, " does not match software version "

    .line 1166
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1169
    invoke-static {}, Lcom/qti/dpm/DpmNsrmConfigParser$Version;->getString()Ljava/lang/String;

    move-result-object v15

    .line 1166
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1165
    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    .end local v11    # "version":Ljava/lang/String;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1172
    :cond_3
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    .line 1173
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "No/Many version tag from Nsrm node "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1172
    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1184
    .end local v1    # "configData":Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v9    # "nsrmNodes":Lorg/w3c/dom/NodeList;
    .end local v10    # "ret":I
    .end local v12    # "versionNode":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v7

    .line 1185
    .local v7, "e":Lorg/xml/sax/SAXParseException;
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    const-string/jumbo v14, "SAXParseException..."

    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v7}, Lorg/xml/sax/SAXParseException;->printStackTrace()V

    .line 1187
    const/4 v13, -0x3

    return v13

    .line 1176
    .end local v7    # "e":Lorg/xml/sax/SAXParseException;
    .restart local v1    # "configData":Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v8    # "i":I
    .restart local v9    # "nsrmNodes":Lorg/w3c/dom/NodeList;
    .restart local v10    # "ret":I
    :cond_4
    :try_start_1
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    .line 1177
    const-string/jumbo v14, "No version match from any Nsrm Node. Configuration file is not parsed."

    .line 1176
    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const/4 v13, -0x8

    return v13

    .line 1181
    .end local v8    # "i":I
    :cond_5
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    const-string/jumbo v14, "No Nsrm tag"

    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1182
    const/4 v13, -0x3

    return v13

    .line 1192
    .end local v1    # "configData":Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "nsrmNodes":Lorg/w3c/dom/NodeList;
    .end local v10    # "ret":I
    :catch_1
    move-exception v5

    .line 1193
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    const-string/jumbo v14, "NSRM Parser failed"

    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1195
    const/4 v13, -0x1

    return v13

    .line 1188
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 1189
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    const-string/jumbo v14, "NumberFormatException..."

    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1191
    const/4 v13, -0x3

    return v13
.end method

.method private updateDefaultConfigFile(Ljava/lang/String;)V
    .locals 17
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 473
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 474
    .local v3, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 475
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 476
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "/system/etc/dpm/nsrm/NsrmConfiguration.xml"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 477
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    .line 479
    .local v11, "root":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmNsrmConfigParser;->nsrmNode:Lorg/w3c/dom/Element;

    if-eqz v14, :cond_1

    .line 482
    :goto_0
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 483
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 499
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v7

    .line 500
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string/jumbo v14, "DPM:NSRM:PLCY"

    const-string/jumbo v15, "ParserConfigurationException..."

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 470
    .end local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1
    return-void

    .line 486
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "root":Lorg/w3c/dom/Element;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmNsrmConfigParser;->nsrmNode:Lorg/w3c/dom/Element;

    const/4 v15, 0x1

    invoke-interface {v4, v14, v15}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 487
    .local v1, "copied":Lorg/w3c/dom/Node;
    invoke-interface {v11, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 489
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v13

    .line 490
    .local v13, "tf":Ljavax/xml/transform/Transformer;
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 491
    .local v5, "ds":Ljavax/xml/transform/dom/DOMSource;
    new-instance v12, Ljavax/xml/transform/stream/StreamResult;

    const-string/jumbo v14, "/data/dpm/nsrm/NsrmConfiguration.xml"

    invoke-direct {v12, v14}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/lang/String;)V

    .line 492
    .local v12, "sr":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v13, v5, v12}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 493
    const-string/jumbo v14, "DPM:NSRM:PLCY"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Restore "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/data/dpm/nsrm/NsrmConfiguration.xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 502
    .end local v1    # "copied":Lorg/w3c/dom/Node;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "ds":Ljavax/xml/transform/dom/DOMSource;
    .end local v11    # "root":Lorg/w3c/dom/Element;
    .end local v12    # "sr":Ljavax/xml/transform/stream/StreamResult;
    .end local v13    # "tf":Ljavax/xml/transform/Transformer;
    :catch_1
    move-exception v10

    .line 503
    .local v10, "e":Lorg/xml/sax/SAXException;
    const-string/jumbo v14, "DPM:NSRM:PLCY"

    const-string/jumbo v15, "SAXException..."

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 497
    .end local v10    # "e":Lorg/xml/sax/SAXException;
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "root":Lorg/w3c/dom/Element;
    :cond_1
    :try_start_2
    const-string/jumbo v14, "DPM:NSRM:PLCY"

    const-string/jumbo v15, "nsrmNode is null. Not restoring default file"

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 505
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "root":Lorg/w3c/dom/Element;
    :catch_2
    move-exception v8

    .line 506
    .local v8, "e":Ljavax/xml/transform/TransformerConfigurationException;
    const-string/jumbo v14, "DPM:NSRM:PLCY"

    const-string/jumbo v15, "TransformerConfigurationException..."

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {v8}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 511
    .end local v8    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_3
    move-exception v6

    .line 512
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "DPM:NSRM:PLCY"

    const-string/jumbo v15, "updateDefaultConfigFile failed"

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 508
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 509
    .local v9, "e":Ljavax/xml/transform/TransformerException;
    const-string/jumbo v14, "DPM:NSRM:PLCY"

    const-string/jumbo v15, "TransformerException..."

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private updateNsrmDb(Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;)I
    .locals 13
    .param p1, "data"    # Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;

    .prologue
    const/4 v12, -0x1

    .line 261
    :try_start_0
    iget-boolean v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->ismDbOpen:Z

    if-eqz v8, :cond_2

    .line 263
    const-string/jumbo v7, "DROP TABLE IF EXISTS nsrmConfigParams"

    .line 264
    .local v7, "sql":Ljava/lang/String;
    iget-object v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    const-string/jumbo v7, "CREATE TABLE IF NOT EXISTS nsrmConfigParams (id INTEGER PRIMARY KEY,  version text, topen integer, tsyncSocketSetup integer, tsyncWrite integer, suidMode integer, opMode integer, eaqsrdt integer, goodThr double, badThr double, tConnect integer, tDecisionMade integer, minThr integer, tMargin integer, tMinIdle integer, tQuery integer, tDmThreshold integer, recheckThr double, dNsrmEnable integer );"

    .line 269
    iget-object v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "INSERT INTO nsrmConfigParams(version, topen, tsyncSocketSetup, tsyncWrite, suidMode, opMode, eaqsrdt, goodThr, badThr, tConnect, tDecisionMade, minThr, tMargin, tMinIdle, tQuery, tDmThreshold, recheckThr, dNsrmEnable) VALUES (\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 273
    iget-object v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->version:Ljava/lang/String;

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 273
    const-string/jumbo v9, "\',"

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 274
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tOpenTime:I

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 274
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 275
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tSyncSocketSetupTime:I

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 275
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 276
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tSyncSocketWriteTime:I

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 276
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 277
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->suidMode:I

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 277
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 278
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->opMode:I

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 278
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 279
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->eaqsrdt:I

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 279
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 280
    iget-wide v10, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->goodThr:D

    .line 271
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 280
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 281
    iget-wide v10, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->badThr:D

    .line 271
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 281
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 282
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tConnect:I

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 282
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 283
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDecisionMade:I

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 283
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 284
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->minThr:I

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 284
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 285
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tMargin:I

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 285
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 286
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tMinIdle:I

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 286
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 287
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tQuery:I

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 287
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 288
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDmThreshold:I

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 288
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 289
    iget-wide v10, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->recheckThr:D

    .line 271
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 289
    const-string/jumbo v9, ","

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 290
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->dNsrmEnable:I

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 291
    const-string/jumbo v9, ");"

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 292
    iget-object v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    const-string/jumbo v7, "DELETE FROM nsrmAppsList"

    .line 296
    iget-object v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 298
    iget-object v8, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->apps:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    .local v0, "app":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "INSERT INTO nsrmAppsList( appName) VALUES (\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 301
    const-string/jumbo v9, "\');"

    .line 299
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 302
    iget-object v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    .end local v7    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 328
    .local v4, "ex":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v8, "DPM:NSRM:PLCY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t commit config to database. ex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return v12

    .line 306
    .end local v4    # "ex":Landroid/database/sqlite/SQLiteException;
    .restart local v1    # "app$iterator":Ljava/util/Iterator;
    .restart local v7    # "sql":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v7, "DELETE FROM nsrmNTOs"

    .line 307
    iget-object v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 309
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v8, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->mccMnc:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 310
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v8, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->mccMnc:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;

    invoke-static {v8}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-get0(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/util/HashMap;

    move-result-object v6

    .line 312
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 313
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "INSERT INTO nsrmNTOs(mccmnc, port, nto) VALUES (\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 315
    iget-object v8, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->mccMnc:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;

    invoke-static {v8}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-get1(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/lang/String;

    move-result-object v8

    .line 313
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 315
    const-string/jumbo v9, "\',"

    .line 313
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 316
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 313
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 316
    const-string/jumbo v9, ","

    .line 313
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 317
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 313
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 318
    const-string/jumbo v9, ");"

    .line 313
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 319
    const-string/jumbo v8, "DPM:NSRM:PLCY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "insert"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2

    .line 309
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 324
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "i":I
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7    # "sql":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "DPM:NSRM:PLCY"

    const-string/jumbo v9, "db is not open"

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    return v12

    .line 331
    .restart local v1    # "app$iterator":Ljava/util/Iterator;
    .restart local v5    # "i":I
    .restart local v7    # "sql":Ljava/lang/String;
    :cond_3
    const/16 v8, 0x3e8

    return v8
.end method

.method private validateDoubleByRange(Ljava/lang/String;DD)I
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "minVal"    # D
    .param p4, "maxVal"    # D

    .prologue
    const/4 v6, -0x3

    .line 1062
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1068
    .local v2, "num":D
    cmpg-double v1, v2, p2

    if-ltz v1, :cond_0

    cmpl-double v1, v2, p4

    if-lez v1, :cond_1

    .line 1070
    :cond_0
    const-string/jumbo v1, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1071
    const-string/jumbo v5, " is out of range,"

    .line 1070
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1072
    const-string/jumbo v5, " min "

    .line 1070
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1073
    const-string/jumbo v5, " max "

    .line 1070
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    return v6

    .line 1063
    .end local v2    # "num":D
    :catch_0
    move-exception v0

    .line 1064
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "NumberFormatException"

    invoke-static {v1, v4}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1066
    return v6

    .line 1076
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "num":D
    :cond_1
    const/16 v1, 0x3e8

    return v1
.end method

.method private validateInteger(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1045
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    const/16 v1, 0x3e8

    return v1

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "DPM:NSRM:PLCY"

    const-string/jumbo v2, "NumberFormatException"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1049
    const/4 v1, -0x3

    return v1
.end method

.method private validateIntegerByRange(Ljava/lang/String;II)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "minVal"    # I
    .param p3, "maxVal"    # I

    .prologue
    const/4 v5, -0x3

    .line 1022
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1028
    .local v1, "num":I
    if-lt v1, p2, :cond_0

    if-le v1, p3, :cond_1

    .line 1030
    :cond_0
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1031
    const-string/jumbo v4, " is out of range,"

    .line 1030
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1032
    const-string/jumbo v4, " min "

    .line 1030
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1033
    const-string/jumbo v4, " max "

    .line 1030
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    return v5

    .line 1023
    .end local v1    # "num":I
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v3, "NumberFormatException"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1026
    return v5

    .line 1036
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "num":I
    :cond_1
    const/16 v2, 0x3e8

    return v2
.end method

.method private validatePolicyTree(Lorg/w3c/dom/Document;)I
    .locals 6
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v5, -0x3

    .line 1084
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 1086
    .local v2, "root":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_1

    const-string/jumbo v3, "NsrmPolicy"

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1088
    const-string/jumbo v3, "Nsrm"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 1089
    .local v1, "nsrm":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_0

    .line 1091
    const-string/jumbo v3, "Version"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1092
    .local v0, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 1093
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "There must be only one version node <Version> as a child of NSRM node"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    return v5

    .line 1100
    .end local v0    # "list":Lorg/w3c/dom/NodeList;
    :cond_0
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "NSRM node must be <Nsrm> as a child of <NsrmPolicy>"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    return v5

    .line 1106
    .end local v1    # "nsrm":Lorg/w3c/dom/Element;
    :cond_1
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "root node must be <NsrmPolicy>"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    return v5

    .line 1109
    .restart local v0    # "list":Lorg/w3c/dom/NodeList;
    .restart local v1    # "nsrm":Lorg/w3c/dom/Element;
    :cond_2
    const/16 v3, 0x3e8

    return v3
.end method


# virtual methods
.method public deleteNsrmAppLearnedInfo(Ljava/lang/String;)Z
    .locals 6
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 389
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteNsrmAppLearnedInfo app = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "nsrmAppLearnedInfo"

    const-string/jumbo v4, "appName = ?"

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected initialize()Z
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    .line 400
    const/4 v2, 0x0

    .line 401
    .local v2, "success":Z
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/data/dpm/nsrm/NsrmConfiguration.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v1, "f":Ljava/io/File;
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "initialize"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 405
    :try_start_0
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "initialize config file exists"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v3, "/data/dpm/nsrm/NsrmConfiguration.xml"

    invoke-virtual {p0, v3}, Lcom/qti/dpm/DpmNsrmConfigParser;->updateConfig(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 407
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "updateConfig success"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    const/4 v2, 0x1

    .line 414
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 415
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "Using Fallback NsrmConfiguration.xml"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :try_start_1
    const-string/jumbo v3, "/system/etc/dpm/nsrm/NsrmConfiguration.xml"

    invoke-virtual {p0, v3}, Lcom/qti/dpm/DpmNsrmConfigParser;->updateConfig(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-ne v3, v5, :cond_1

    .line 418
    const/4 v2, 0x1

    .line 424
    :cond_1
    :goto_1
    return v2

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 420
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 421
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public updateConfig(Ljava/lang/String;)I
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 453
    const-string/jumbo v1, "DPM:NSRM:PLCY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting NSRM parser, version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 454
    invoke-static {}, Lcom/qti/dpm/DpmNsrmConfigParser$Version;->getString()Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/4 v0, -0x1

    .line 456
    .local v0, "retVal":I
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmNsrmConfigParser;->parseNsrmFile(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 457
    const-string/jumbo v1, "DPM:NSRM:PLCY"

    const-string/jumbo v2, "Finished parsing NSRM Config file"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string/jumbo v1, "/data/dpm/nsrm/NsrmConfiguration.xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmNsrmConfigParser;->updateDefaultConfigFile(Ljava/lang/String;)V

    .line 462
    :cond_0
    return v0
.end method

.method public updateNsrmAppLearnedInfoDb(Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;)I
    .locals 10
    .param p1, "data"    # Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;

    .prologue
    const/4 v9, -0x1

    .line 336
    :try_start_0
    iget-boolean v3, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->ismDbOpen:Z

    if-eqz v3, :cond_1

    .line 338
    iget-object v3, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/qti/dpm/DpmNsrmConfigParser;->appExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNsrmAppLearnedInfoDb for existing app = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "uid"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    const-string/jumbo v3, "currMode"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->currMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    const-string/jumbo v3, "cc1"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->cc1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string/jumbo v3, "cc2"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->cc2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    const-string/jumbo v3, "npcc2"

    iget-wide v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->pcc2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 349
    const-string/jumbo v3, "goodCnt"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->goodCnt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    const-string/jumbo v3, "badCnt"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->badCnt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string/jumbo v3, "decisionMade"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->decisionMade:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string/jumbo v3, "reCountCC2"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->reCountCC2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    const-string/jumbo v3, "dmTimestamp"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->dmTimestamp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    const-string/jumbo v3, "appLearningTime1"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appLearningTime1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    const-string/jumbo v3, "appLearningTime2"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appLearningTime2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    iget-object v3, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "nsrmAppLearnedInfo"

    const-string/jumbo v5, "appName = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appName:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 385
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_0
    const/16 v3, 0x3e8

    return v3

    .line 358
    :cond_0
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNsrmAppLearnedInfoDb for new app = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "INSERT INTO nsrmAppLearnedInfo(appName, uid, currMode, cc1, cc2, npcc2, goodCnt, badCnt, decisionMade, reCountCC2, dmTimestamp, appLearningTime1, appLearningTime2) VALUES (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 361
    iget-object v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appName:Ljava/lang/String;

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 361
    const-string/jumbo v4, "\',"

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 362
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->uid:I

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 362
    const-string/jumbo v4, ","

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 363
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->currMode:I

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 363
    const-string/jumbo v4, ","

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 364
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->cc1:I

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 364
    const-string/jumbo v4, ","

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 365
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->cc2:I

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 365
    const-string/jumbo v4, ","

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 366
    iget-wide v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->pcc2:D

    .line 359
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 366
    const-string/jumbo v4, ","

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 367
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->goodCnt:I

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 367
    const-string/jumbo v4, ","

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 368
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->badCnt:I

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 368
    const-string/jumbo v4, ","

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 369
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->decisionMade:I

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 369
    const-string/jumbo v4, ","

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 370
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->reCountCC2:I

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 370
    const-string/jumbo v4, ","

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 371
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->dmTimestamp:I

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 371
    const-string/jumbo v4, ","

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 372
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appLearningTime1:I

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 372
    const-string/jumbo v4, ","

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 373
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appLearningTime2:I

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 374
    const-string/jumbo v4, ");"

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 381
    .end local v2    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 382
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t commit config to database. ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return v9

    .line 378
    .end local v1    # "ex":Landroid/database/sqlite/SQLiteException;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "db is not open"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    return v9
.end method
