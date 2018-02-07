.class public Lcom/android/settings_ex/search/Index;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/search/Index$SaveSearchQueryTask;,
        Lcom/android/settings_ex/search/Index$UpdateData;,
        Lcom/android/settings_ex/search/Index$UpdateIndexTask;
    }
.end annotation


# static fields
.field private static final BASE_AUTHORITY:Ljava/lang/String; = "com.android.settings_ex"

.field private static final CLOUD_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.cloud"

.field public static final COLUMN_INDEX_CLASS_NAME:I = 0x6

.field public static final COLUMN_INDEX_ENABLED:I = 0xc

.field public static final COLUMN_INDEX_ENTRIES:I = 0x4

.field public static final COLUMN_INDEX_ICON:I = 0x8

.field public static final COLUMN_INDEX_INTENT_ACTION:I = 0x9

.field public static final COLUMN_INDEX_INTENT_ACTION_TARGET_CLASS:I = 0xb

.field public static final COLUMN_INDEX_INTENT_ACTION_TARGET_PACKAGE:I = 0xa

.field public static final COLUMN_INDEX_KEY:I = 0xd

.field public static final COLUMN_INDEX_KEYWORDS:I = 0x5

.field public static final COLUMN_INDEX_RANK:I = 0x0

.field public static final COLUMN_INDEX_SCREEN_TITLE:I = 0x7

.field public static final COLUMN_INDEX_SUMMARY_OFF:I = 0x3

.field public static final COLUMN_INDEX_SUMMARY_ON:I = 0x2

.field public static final COLUMN_INDEX_TITLE:I = 0x1

.field public static final COLUMN_INDEX_USER_ID:I = 0xe

.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENTRIES_SEPARATOR:Ljava/lang/String; = "|"

.field private static final FIELD_NAME_SEARCH_INDEX_DATA_PROVIDER:Ljava/lang/String; = "SEARCH_INDEX_DATA_PROVIDER"

.field private static final HYPHEN:Ljava/lang/String; = "-"

.field private static final LIST_DELIMITERS:Ljava/lang/String; = "[,]\\s*"

.field private static final LOG_TAG:Ljava/lang/String; = "Index"

.field private static final MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

.field private static final MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

.field private static final MAX_PROPOSED_SUGGESTIONS:I = 0x5

.field private static MAX_SAVED_SEARCH_QUERY:J = 0x0L

.field private static final NODE_NAME_CHECK_BOX_PREFERENCE:Ljava/lang/String; = "CheckBoxPreference"

.field private static final NODE_NAME_LIST_PREFERENCE:Ljava/lang/String; = "ListPreference"

.field private static final NODE_NAME_PREFERENCE_SCREEN:Ljava/lang/String; = "PreferenceScreen"

.field private static final NON_BREAKING_HYPHEN:Ljava/lang/String; = "\u2011"

.field private static final OPBACKUP_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.opbackup"

.field private static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SECURITY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.security"

.field private static final SELECT_COLUMNS:[Ljava/lang/String;

.field private static final SPACE:Ljava/lang/String; = " "

.field private static sInstance:Lcom/android/settings_ex/search/Index;


# instance fields
.field private final mBaseAuthority:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDataToProcess:Lcom/android/settings_ex/search/Index$UpdateData;

.field private final mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Lcom/android/settings_ex/search/Index;->MAX_SAVED_SEARCH_QUERY:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/search/Index;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/search/Index;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/search/Index;)Lcom/android/settings_ex/search/Index$UpdateData;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/search/Index;->mDataToProcess:Lcom/android/settings_ex/search/Index$UpdateData;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/search/Index;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/search/Index;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/search/Index;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/search/Index;->addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/search/Index;Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/search/Index;->isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/search/Index;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/search/Index;->addNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/search/Index;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    .locals 0
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/provider/SearchIndexableData;
    .param p4, "nonIndexableKeys"    # Ljava/util/Map;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/search/Index;->indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings_ex/search/Index;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/search/Index;->updateInternal()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 115
    const-string/jumbo v1, "data_rank"

    aput-object v1, v0, v3

    .line 116
    const-string/jumbo v1, "data_title"

    aput-object v1, v0, v4

    .line 117
    const-string/jumbo v1, "data_summary_on"

    aput-object v1, v0, v5

    .line 118
    const-string/jumbo v1, "data_summary_off"

    aput-object v1, v0, v6

    .line 119
    const-string/jumbo v1, "data_entries"

    aput-object v1, v0, v7

    .line 120
    const-string/jumbo v1, "data_keywords"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 121
    const-string/jumbo v1, "class_name"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 122
    const-string/jumbo v1, "screen_title"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 123
    const-string/jumbo v1, "icon"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 124
    const-string/jumbo v1, "intent_action"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "intent_target_package"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "intent_target_class"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "enabled"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "data_key_reference"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 114
    sput-object v0, Lcom/android/settings_ex/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    .line 131
    new-array v0, v6, [Ljava/lang/String;

    .line 132
    const-string/jumbo v1, "data_title"

    aput-object v1, v0, v3

    .line 133
    const-string/jumbo v1, "data_title_normalized"

    aput-object v1, v0, v4

    .line 134
    const-string/jumbo v1, "data_keywords"

    aput-object v1, v0, v5

    .line 131
    sput-object v0, Lcom/android/settings_ex/search/Index;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    .line 137
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 138
    const-string/jumbo v1, "data_summary_on"

    aput-object v1, v0, v3

    .line 139
    const-string/jumbo v1, "data_summary_on_normalized"

    aput-object v1, v0, v4

    .line 140
    const-string/jumbo v1, "data_summary_off"

    aput-object v1, v0, v5

    .line 141
    const-string/jumbo v1, "data_summary_off_normalized"

    aput-object v1, v0, v6

    .line 142
    const-string/jumbo v1, "data_entries"

    aput-object v1, v0, v7

    .line 137
    sput-object v0, Lcom/android/settings_ex/search/Index;->MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

    .line 146
    const-wide/16 v0, 0x40

    sput-wide v0, Lcom/android/settings_ex/search/Index;->MAX_SAVED_SEARCH_QUERY:J

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/search/Index;->EMPTY_LIST:Ljava/util/List;

    .line 170
    const-string/jumbo v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 169
    sput-object v0, Lcom/android/settings_ex/search/Index;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseAuthority"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ex/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 211
    new-instance v0, Lcom/android/settings_ex/search/Index$UpdateData;

    invoke-direct {v0}, Lcom/android/settings_ex/search/Index$UpdateData;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/search/Index;->mDataToProcess:Lcom/android/settings_ex/search/Index$UpdateData;

    .line 226
    iput-object p1, p0, Lcom/android/settings_ex/search/Index;->mContext:Landroid/content/Context;

    .line 227
    iput-object p2, p0, Lcom/android/settings_ex/search/Index;->mBaseAuthority:Ljava/lang/String;

    .line 225
    return-void
.end method

.method private addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V
    .locals 25
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "baseRank"    # I

    .prologue
    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 614
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 616
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 617
    const-string/jumbo v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot add index data for Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void

    .line 622
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 623
    .local v9, "count":I
    if-lez v9, :cond_2

    .line 624
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 625
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 626
    .local v16, "providerRank":I
    if-lez v16, :cond_1

    add-int v17, p5, v16

    .line 628
    .local v17, "rank":I
    :goto_1
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 629
    .local v23, "title":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 630
    .local v20, "summaryOn":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 631
    .local v19, "summaryOff":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 632
    .local v12, "entries":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 634
    .local v15, "keywords":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 636
    .local v18, "screenTitle":Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 637
    .local v8, "className":Ljava/lang/String;
    const/16 v2, 0x8

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 639
    .local v13, "iconResId":I
    const/16 v2, 0x9

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 641
    .local v7, "action":Ljava/lang/String;
    const/16 v2, 0xa

    .line 640
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 643
    .local v22, "targetPackage":Ljava/lang/String;
    const/16 v2, 0xb

    .line 642
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 645
    .local v21, "targetClass":Ljava/lang/String;
    const/16 v2, 0xc

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 646
    .local v14, "key":Ljava/lang/String;
    const/16 v2, 0xd

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 648
    .local v24, "userId":I
    new-instance v11, Lcom/android/settings_ex/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 649
    .local v11, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move/from16 v0, v17

    iput v0, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->rank:I

    .line 650
    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 651
    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 652
    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 653
    iput-object v12, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    .line 654
    iput-object v15, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 655
    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 656
    iput-object v8, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 657
    move-object/from16 v0, p2

    iput-object v0, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->packageName:Ljava/lang/String;

    .line 658
    iput v13, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->iconResId:I

    .line 659
    iput-object v7, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 660
    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 661
    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 662
    iput-object v14, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 663
    move/from16 v0, v24

    iput v0, v11, Lcom/android/settings_ex/search/SearchIndexableRaw;->userId:I

    .line 665
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 668
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v11    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    .end local v12    # "entries":Ljava/lang/String;
    .end local v13    # "iconResId":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keywords":Ljava/lang/String;
    .end local v16    # "providerRank":I
    .end local v17    # "rank":I
    .end local v18    # "screenTitle":Ljava/lang/String;
    .end local v19    # "summaryOff":Ljava/lang/String;
    .end local v20    # "summaryOn":Ljava/lang/String;
    .end local v21    # "targetClass":Ljava/lang/String;
    .end local v22    # "targetPackage":Ljava/lang/String;
    .end local v23    # "title":Ljava/lang/String;
    .end local v24    # "userId":I
    :catchall_0
    move-exception v2

    .line 669
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 668
    throw v2

    .line 626
    .restart local v9    # "count":I
    .restart local v16    # "providerRank":I
    :cond_1
    move/from16 v17, p5

    .restart local v17    # "rank":I
    goto/16 :goto_1

    .line 669
    .end local v16    # "providerRank":I
    .end local v17    # "rank":I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 611
    return-void
.end method

.method private addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V
    .locals 18
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "baseRank"    # I

    .prologue
    .line 566
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 567
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 569
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 570
    const-string/jumbo v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot add index data for Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    .line 575
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 576
    .local v9, "count":I
    if-lez v9, :cond_2

    .line 577
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 578
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 579
    .local v12, "providerRank":I
    if-lez v12, :cond_1

    add-int v13, p5, v12

    .line 581
    .local v13, "rank":I
    :goto_1
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 583
    .local v17, "xmlResId":I
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 584
    .local v8, "className":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 586
    .local v11, "iconResId":I
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 588
    .local v7, "action":Ljava/lang/String;
    const/4 v2, 0x5

    .line 587
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 590
    .local v16, "targetPackage":Ljava/lang/String;
    const/4 v2, 0x6

    .line 589
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 592
    .local v15, "targetClass":Ljava/lang/String;
    new-instance v14, Landroid/provider/SearchIndexableResource;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 593
    .local v14, "sir":Landroid/provider/SearchIndexableResource;
    iput v13, v14, Landroid/provider/SearchIndexableResource;->rank:I

    .line 594
    move/from16 v0, v17

    iput v0, v14, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 595
    iput-object v8, v14, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 596
    move-object/from16 v0, p2

    iput-object v0, v14, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    .line 597
    iput v11, v14, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 598
    iput-object v7, v14, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    .line 599
    move-object/from16 v0, v16

    iput-object v0, v14, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 600
    iput-object v15, v14, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 602
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 605
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v11    # "iconResId":I
    .end local v12    # "providerRank":I
    .end local v13    # "rank":I
    .end local v14    # "sir":Landroid/provider/SearchIndexableResource;
    .end local v15    # "targetClass":Ljava/lang/String;
    .end local v16    # "targetPackage":Ljava/lang/String;
    .end local v17    # "xmlResId":I
    :catchall_0
    move-exception v2

    .line 606
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 605
    throw v2

    .line 579
    .restart local v9    # "count":I
    .restart local v12    # "providerRank":I
    :cond_1
    move/from16 v13, p5

    .restart local v13    # "rank":I
    goto :goto_1

    .line 606
    .end local v12    # "providerRank":I
    .end local v13    # "rank":I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 564
    return-void
.end method

.method private addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 334
    :try_start_0
    invoke-static {p2}, Lcom/android/settings_ex/search/Ranking;->getBaseRankForAuthority(Ljava/lang/String;)I

    move-result v5

    .line 336
    .local v5, "baseRank":I
    iget-object v0, p0, Lcom/android/settings_ex/search/Index;->mBaseAuthority:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/settings_ex/search/Index;->mContext:Landroid/content/Context;

    .line 339
    .local v1, "context":Landroid/content/Context;
    :goto_0
    invoke-static {p2}, Lcom/android/settings_ex/search/Index;->buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 341
    .local v3, "uriForResources":Landroid/net/Uri;
    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    .line 340
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/search/Index;->addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 343
    invoke-static {p2}, Lcom/android/settings_ex/search/Index;->buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 345
    .local v9, "uriForRawData":Landroid/net/Uri;
    sget-object v10, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    move-object v6, p0

    move-object v7, v1

    move-object v8, p1

    move v11, v5

    .line 344
    invoke-direct/range {v6 .. v11}, Lcom/android/settings_ex/search/Index;->addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 346
    const/4 v0, 0x1

    return v0

    .line 337
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "uriForResources":Landroid/net/Uri;
    .end local v9    # "uriForRawData":Landroid/net/Uri;
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/search/Index;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "context":Landroid/content/Context;
    goto :goto_0

    .line 347
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "baseRank":I
    :catch_0
    move-exception v12

    .line 348
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v0, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not create context for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 349
    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method private addNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/search/Index;->getNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 358
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/search/Index;->addNonIndexableKeys(Ljava/lang/String;Ljava/util/List;)V

    .line 355
    return-void
.end method

.method private buildSearchMatchStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v0, p2

    .line 719
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 720
    aget-object v4, p2, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_0

    .line 724
    const-string/jumbo v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "colums"    # [Ljava/lang/String;
    .param p3, "withOrderBy"    # Z

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 675
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/search/Index;->buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    if-eqz p3, :cond_0

    .line 677
    const-string/jumbo v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const-string/jumbo v1, "data_rank"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    sget-object v2, Lcom/android/settings_ex/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 687
    sget-object v2, Lcom/android/settings_ex/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    sget-object v2, Lcom/android/settings_ex/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 689
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_1
    const-string/jumbo v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    const-string/jumbo v2, "prefs_index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    const-string/jumbo v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/search/Index;->buildSearchWhereStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private buildSearchWhereStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "prefs_index"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 702
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " MATCH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/search/Index;->buildSearchMatchStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 705
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    const-string/jumbo v1, "locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const-string/jumbo v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 709
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string/jumbo v1, " = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildSuggestionsSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string/jumbo v1, "saved_queries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const-string/jumbo v1, " ORDER BY rowId DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :goto_0
    const-string/jumbo v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 276
    :cond_0
    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string/jumbo v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 551
    const-string/jumbo v1, "settings/non_indexables_key"

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 546
    const-string/jumbo v1, "settings/indexables_raw"

    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 541
    const-string/jumbo v1, "settings/indexables_xml_res"

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1147
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1148
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 1150
    .local v2, "tv":Landroid/util/TypedValue;
    const/4 v0, 0x0

    .line 1151
    .local v0, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1152
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_2

    .line 1153
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1158
    .end local v0    # "data":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    return-object v3

    .line 1155
    .restart local v0    # "data":Ljava/lang/CharSequence;
    :cond_2
    iget-object v0, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .local v0, "data":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1138
    sget-object v0, Lcom/android/internal/R$styleable;->ListPreference:[I

    .line 1139
    const/4 v1, 0x0

    .line 1137
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings_ex/search/Index;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 1162
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1163
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 1165
    .local v5, "tv":Landroid/util/TypedValue;
    const/4 v1, 0x0

    .line 1166
    .local v1, "data":[Ljava/lang/String;
    if-eqz v5, :cond_0

    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1167
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_0

    .line 1168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1171
    .end local v1    # "data":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 1172
    .local v0, "count":I
    :goto_0
    if-nez v0, :cond_2

    .line 1173
    return-object v8

    .line 1171
    .end local v0    # "count":I
    :cond_1
    array-length v0, v1

    goto :goto_0

    .line 1175
    .restart local v0    # "count":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1176
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1177
    aget-object v6, v1, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    const-string/jumbo v6, "|"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1180
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1108
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    .line 1109
    const/4 v1, 0x6

    .line 1107
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings_ex/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1143
    sget-object v0, Lcom/android/settings_ex/R$styleable;->Preference:[I

    const/16 v1, 0x1c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings_ex/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1120
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    .line 1121
    const/4 v1, 0x7

    .line 1119
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings_ex/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1132
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    .line 1133
    const/4 v1, 0x1

    .line 1131
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings_ex/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1126
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    .line 1127
    const/4 v1, 0x0

    .line 1125
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings_ex/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1114
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    .line 1115
    const/4 v1, 0x4

    .line 1113
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings_ex/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 771
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 776
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/android/settings_ex/search/Index;->isIndexableClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 772
    :catch_0
    move-exception v1

    .line 773
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot find class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-object v2

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v0, v2

    .line 776
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    sget-object v0, Lcom/android/settings_ex/search/Index;->sInstance:Lcom/android/settings_ex/search/Index;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/android/settings_ex/search/Index;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings_ex"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/search/Index;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/search/Index;->sInstance:Lcom/android/settings_ex/search/Index;

    .line 222
    :cond_0
    sget-object v0, Lcom/android/settings_ex/search/Index;->sInstance:Lcom/android/settings_ex/search/Index;

    return-object v0
.end method

.method private getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    move-object v1, p2

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    .line 380
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 382
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 383
    const-string/jumbo v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot add index data for Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    sget-object v1, Lcom/android/settings_ex/search/Index;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    .line 387
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 390
    .local v6, "count":I
    if-lez v6, :cond_1

    .line 391
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 393
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 397
    .end local v6    # "count":I
    .end local v8    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 398
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 397
    throw v1

    .line 398
    .restart local v6    # "count":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 396
    return-object v9
.end method

.method private getNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/search/Index;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 366
    .local v1, "packageContext":Landroid/content/Context;
    invoke-static {p2}, Lcom/android/settings_ex/search/Index;->buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 368
    .local v2, "uriForNonIndexableKeys":Landroid/net/Uri;
    sget-object v3, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    .line 367
    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings_ex/search/Index;->getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 369
    .end local v1    # "packageContext":Landroid/content/Context;
    .end local v2    # "uriForNonIndexableKeys":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not create context for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 371
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-object v3, Lcom/android/settings_ex/search/Index;->EMPTY_LIST:Ljava/util/List;

    return-object v3
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/settings_ex/search/Index;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/IndexDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/search/IndexDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getResId(Landroid/content/Context;Landroid/util/AttributeSet;[II)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    .line 1184
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1185
    .local v0, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v0, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 1187
    .local v1, "tv":Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1188
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    return v2

    .line 1190
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 829
    :try_start_0
    const-string/jumbo v5, "SEARCH_INDEX_DATA_PROVIDER"

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 830
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 839
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 840
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "Index"

    .line 841
    const-string/jumbo v6, "Illegal argument when accessing field \'SEARCH_INDEX_DATA_PROVIDER\'"

    .line 840
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-object v7

    .line 836
    :catch_1
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "Index"

    .line 838
    const-string/jumbo v6, "Illegal access to field \'SEARCH_INDEX_DATA_PROVIDER\'"

    .line 837
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 833
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 834
    .local v4, "se":Ljava/lang/SecurityException;
    const-string/jumbo v5, "Index"

    .line 835
    const-string/jumbo v6, "Security exception for field \'SEARCH_INDEX_DATA_PROVIDER\'"

    .line 834
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 831
    .end local v4    # "se":Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 832
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v5, "Index"

    const-string/jumbo v6, "Cannot find field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/search/Index;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/IndexDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/search/IndexDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "Index"

    const-string/jumbo v2, "Cannot open writable database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    const/4 v1, 0x0

    return-object v1
.end method

.method private indexFromProvider(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;Ljava/lang/String;IIZLjava/util/List;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "provider"    # Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;
    .param p5, "className"    # Ljava/lang/String;
    .param p6, "iconResId"    # I
    .param p7, "rank"    # I
    .param p8, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 955
    .local p9, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p4, :cond_0

    .line 956
    const-string/jumbo v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot find provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return-void

    .line 960
    :cond_0
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v24

    .line 962
    .local v24, "rawList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    if-eqz v24, :cond_3

    .line 963
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v25

    .line 964
    .local v25, "rawSize":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 965
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .line 968
    .local v23, "raw":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 964
    :cond_1
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 972
    :cond_2
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 977
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 978
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 979
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 980
    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    .line 982
    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 985
    move-object/from16 v0, v23

    iget-object v14, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 986
    move-object/from16 v0, v23

    iget-object v15, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 987
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 988
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 989
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    move/from16 v18, v0

    .line 990
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 991
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->userId:I

    move/from16 v20, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    .line 976
    invoke-direct/range {v3 .. v20}, Lcom/android/settings_ex/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_1

    .line 996
    .end local v21    # "i":I
    .end local v23    # "raw":Lcom/android/settings_ex/search/SearchIndexableRaw;
    .end local v25    # "rawSize":I
    :cond_3
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v26

    .line 997
    .local v26, "resList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    if-eqz v26, :cond_8

    .line 998
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v27

    .line 999
    .local v27, "resSize":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 1000
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/provider/SearchIndexableResource;

    .line 1003
    .local v22, "item":Landroid/provider/SearchIndexableResource;
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 999
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 1007
    :cond_4
    move-object/from16 v0, v22

    iget v3, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    if-nez v3, :cond_5

    move/from16 v9, p6

    .line 1008
    .local v9, "itemIconResId":I
    :goto_4
    move-object/from16 v0, v22

    iget v3, v0, Landroid/provider/SearchIndexableResource;->rank:I

    if-nez v3, :cond_6

    move/from16 v10, p7

    .line 1009
    .local v10, "itemRank":I
    :goto_5
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1010
    move-object/from16 v8, p5

    .line 1013
    .local v8, "itemClassName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v22

    iget v7, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1014
    move-object/from16 v0, v22

    iget-object v11, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v12, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 1015
    move-object/from16 v0, v22

    iget-object v13, v0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v14, p9

    .line 1012
    invoke-direct/range {v3 .. v14}, Lcom/android/settings_ex/search/Index;->indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 1007
    .end local v8    # "itemClassName":Ljava/lang/String;
    .end local v9    # "itemIconResId":I
    .end local v10    # "itemRank":I
    :cond_5
    move-object/from16 v0, v22

    iget v9, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    .restart local v9    # "itemIconResId":I
    goto :goto_4

    .line 1008
    :cond_6
    move-object/from16 v0, v22

    iget v10, v0, Landroid/provider/SearchIndexableResource;->rank:I

    .restart local v10    # "itemRank":I
    goto :goto_5

    .line 1010
    :cond_7
    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .restart local v8    # "itemClassName":Ljava/lang/String;
    goto :goto_6

    .line 953
    .end local v8    # "itemClassName":Ljava/lang/String;
    .end local v9    # "itemIconResId":I
    .end local v10    # "itemRank":I
    .end local v21    # "i":I
    .end local v22    # "item":Landroid/provider/SearchIndexableResource;
    .end local v27    # "resSize":I
    :cond_8
    return-void
.end method

.method private indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 45
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "xmlResId"    # I
    .param p5, "fragmentName"    # Ljava/lang/String;
    .param p6, "iconResId"    # I
    .param p7, "rank"    # I
    .param p8, "intentAction"    # Ljava/lang/String;
    .param p9, "intentTargetPackage"    # Ljava/lang/String;
    .param p10, "intentTargetClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 852
    .local p11, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v43, 0x0

    .line 854
    .local v43, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v43

    .line 857
    .local v43, "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface/range {v43 .. v43}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v44

    .local v44, "type":I
    const/4 v3, 0x1

    move/from16 v0, v44

    if-eq v0, v3, :cond_1

    .line 858
    const/4 v3, 0x2

    move/from16 v0, v44

    if-ne v0, v3, :cond_0

    .line 862
    :cond_1
    invoke-interface/range {v43 .. v43}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v41

    .line 873
    .local v41, "nodeName":Ljava/lang/String;
    invoke-interface/range {v43 .. v43}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v42

    .line 874
    .local v42, "outerDepth":I
    invoke-static/range {v43 .. v43}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v38

    .line 876
    .local v38, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v11

    .line 878
    .local v11, "screenTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/search/Index;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    .line 886
    .local v19, "key":Ljava/lang/String;
    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 887
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 888
    .local v6, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 889
    .local v7, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/search/Index;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v14

    .line 891
    .local v14, "keywords":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 893
    const/16 v18, 0x1

    .line 894
    const/16 v20, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    .line 891
    invoke-direct/range {v3 .. v20}, Lcom/android/settings_ex/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 897
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "summary":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface/range {v43 .. v43}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v44

    const/4 v3, 0x1

    move/from16 v0, v44

    if-eq v0, v3, :cond_8

    .line 898
    const/4 v3, 0x3

    move/from16 v0, v44

    if-ne v0, v3, :cond_3

    invoke-interface/range {v43 .. v43}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v42

    if-le v3, v0, :cond_8

    .line 899
    :cond_3
    const/4 v3, 0x3

    move/from16 v0, v44

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    move/from16 v0, v44

    if-eq v0, v3, :cond_2

    .line 903
    invoke-interface/range {v43 .. v43}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v41

    .line 905
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/search/Index;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    .line 906
    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 910
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 911
    .restart local v6    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/search/Index;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v14

    .line 913
    .restart local v14    # "keywords":Ljava/lang/String;
    const-string/jumbo v3, "CheckBoxPreference"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 914
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 916
    .restart local v7    # "summary":Ljava/lang/String;
    const/4 v9, 0x0

    .line 918
    .local v9, "entries":Ljava/lang/String;
    const-string/jumbo v3, "ListPreference"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 919
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/search/Index;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v9

    .line 923
    .end local v9    # "entries":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    .line 926
    const/16 v18, 0x1

    const/16 v20, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    .line 923
    invoke-direct/range {v3 .. v20}, Lcom/android/settings_ex/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 942
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "summary":Ljava/lang/String;
    .end local v11    # "screenTitle":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/String;
    .end local v38    # "attrs":Landroid/util/AttributeSet;
    .end local v41    # "nodeName":Ljava/lang/String;
    .end local v42    # "outerDepth":I
    .end local v43    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v44    # "type":I
    :catch_0
    move-exception v40

    .line 943
    .local v40, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Error parsing PreferenceScreen"

    move-object/from16 v0, v40

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    .end local v40    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    .line 947
    if-eqz v43, :cond_5

    invoke-interface/range {v43 .. v43}, Landroid/content/res/XmlResourceParser;->close()V

    .line 946
    :cond_5
    throw v3

    .line 928
    .restart local v6    # "title":Ljava/lang/String;
    .restart local v11    # "screenTitle":Ljava/lang/String;
    .restart local v14    # "keywords":Ljava/lang/String;
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v38    # "attrs":Landroid/util/AttributeSet;
    .restart local v41    # "nodeName":Ljava/lang/String;
    .restart local v42    # "outerDepth":I
    .restart local v43    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v44    # "type":I
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/search/Index;->getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v24

    .line 929
    .local v24, "summaryOn":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/search/Index;->getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v25

    .line 931
    .local v25, "summaryOff":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 932
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v24

    .line 936
    :cond_7
    const/16 v26, 0x0

    .line 938
    const/16 v35, 0x1

    const/16 v37, -0x1

    move-object/from16 v20, p0

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move-object/from16 v23, v6

    move-object/from16 v27, p5

    move-object/from16 v28, v11

    move/from16 v29, p6

    move/from16 v30, p7

    move-object/from16 v31, v14

    move-object/from16 v32, p8

    move-object/from16 v33, p9

    move-object/from16 v34, p10

    move-object/from16 v36, v19

    .line 935
    invoke-direct/range {v20 .. v37}, Lcom/android/settings_ex/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 944
    .end local v6    # "title":Ljava/lang/String;
    .end local v11    # "screenTitle":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/String;
    .end local v24    # "summaryOn":Ljava/lang/String;
    .end local v25    # "summaryOff":Ljava/lang/String;
    .end local v38    # "attrs":Landroid/util/AttributeSet;
    .end local v41    # "nodeName":Ljava/lang/String;
    .end local v42    # "outerDepth":I
    .end local v43    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v44    # "type":I
    :catch_1
    move-exception v39

    .line 945
    .local v39, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Error parsing PreferenceScreen"

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 947
    .end local v39    # "e":Ljava/io/IOException;
    .restart local v11    # "screenTitle":Ljava/lang/String;
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v38    # "attrs":Landroid/util/AttributeSet;
    .restart local v41    # "nodeName":Ljava/lang/String;
    .restart local v42    # "outerDepth":I
    .restart local v43    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v44    # "type":I
    :cond_8
    if-eqz v43, :cond_9

    invoke-interface/range {v43 .. v43}, Landroid/content/res/XmlResourceParser;->close()V

    .line 850
    :cond_9
    return-void
.end method

.method private indexOneRaw(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings_ex/search/SearchIndexableRaw;)V
    .locals 19
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "raw"    # Lcom/android/settings_ex/search/SearchIndexableRaw;

    .prologue
    .line 742
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 743
    return-void

    .line 747
    :cond_0
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 748
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 749
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 750
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    .line 751
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 752
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 753
    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->iconResId:I

    .line 754
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->rank:I

    .line 755
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 756
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 757
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 758
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 759
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    move/from16 v16, v0

    .line 760
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 761
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->userId:I

    move/from16 v18, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 746
    invoke-direct/range {v1 .. v18}, Lcom/android/settings_ex/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 740
    return-void
.end method

.method private indexOneResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/Map;)V
    .locals 16
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "sir"    # Landroid/provider/SearchIndexableResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p4, "nonIndexableKeysFromResource":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p3, :cond_0

    .line 783
    const-string/jumbo v1, "Index"

    const-string/jumbo v2, "Cannot index a null resource!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void

    .line 787
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .local v12, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    iget v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    sget v2, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    if-le v1, v2, :cond_3

    .line 790
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 791
    .local v15, "resNonIndxableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 792
    invoke-interface {v12, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 795
    :cond_1
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    .line 796
    move-object/from16 v0, p3

    iget v5, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v7, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    move-object/from16 v0, p3

    iget v8, v0, Landroid/provider/SearchIndexableResource;->rank:I

    .line 797
    move-object/from16 v0, p3

    iget-object v9, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 795
    invoke-direct/range {v1 .. v12}, Lcom/android/settings_ex/search/Index;->indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 780
    .end local v15    # "resNonIndxableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-void

    .line 800
    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 801
    const-string/jumbo v1, "Index"

    const-string/jumbo v2, "Cannot index an empty Search Provider name!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-void

    .line 805
    :cond_4
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ex/search/Index;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 806
    .local v13, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v13, :cond_5

    .line 807
    const-string/jumbo v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SearchIndexableResource \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 808
    const-string/jumbo v3, "\' should implement the "

    .line 807
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 808
    const-class v3, Lcom/android/settings_ex/search/Indexable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 807
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 808
    const-string/jumbo v3, " interface!"

    .line 807
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-void

    .line 814
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/search/Index;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    move-result-object v7

    .line 815
    .local v7, "provider":Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;
    if-eqz v7, :cond_2

    .line 816
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    invoke-interface {v7, v1}, Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    .line 817
    .local v14, "providerNonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_6

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 818
    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 821
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/search/Index;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v8, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 822
    move-object/from16 v0, p3

    iget v9, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    move-object/from16 v0, p3

    iget v10, v0, Landroid/provider/SearchIndexableResource;->rank:I

    move-object/from16 v0, p3

    iget-boolean v11, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 821
    invoke-direct/range {v3 .. v12}, Lcom/android/settings_ex/search/Index;->indexFromProvider(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;Ljava/lang/String;IIZLjava/util/List;)V

    goto/16 :goto_0
.end method

.method private indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/provider/SearchIndexableData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableData;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 732
    .local p4, "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    instance-of v0, p3, Landroid/provider/SearchIndexableResource;

    if-eqz v0, :cond_1

    .line 733
    check-cast p3, Landroid/provider/SearchIndexableResource;

    .end local p3    # "data":Landroid/provider/SearchIndexableData;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/search/Index;->indexOneResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/Map;)V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 734
    .restart local p3    # "data":Landroid/provider/SearchIndexableData;
    :cond_1
    instance-of v0, p3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    if-eqz v0, :cond_0

    .line 735
    check-cast p3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local p3    # "data":Landroid/provider/SearchIndexableData;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/search/Index;->indexOneRaw(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings_ex/search/SearchIndexableRaw;)V

    goto :goto_0
.end method

.method private static isIndexableClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 765
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    const-class v0, Lcom/android/settings_ex/search/Indexable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPrivilegedPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 465
    iget-object v4, p0, Lcom/android/settings_ex/search/Index;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 467
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 468
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 470
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v3
.end method

.method private isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v5, 0x0

    .line 439
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 440
    .local v0, "authority":Ljava/lang/String;
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 441
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 442
    :cond_0
    return v5

    .line 445
    :cond_1
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 446
    .local v2, "readPermission":Ljava/lang/String;
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v4, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 447
    .local v3, "writePermission":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 448
    :cond_2
    return v5

    .line 451
    :cond_3
    const-string/jumbo v4, "android.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 452
    const-string/jumbo v4, "android.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 457
    const-string/jumbo v4, "com.oneplus.opbackup"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "com.oneplus.security"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "com.oneplus.cloud"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 458
    :cond_4
    const/4 v4, 0x1

    return v4

    .line 453
    :cond_5
    return v5

    .line 460
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/settings_ex/search/Index;->isPrivilegedPackage(Ljava/lang/String;)Z

    move-result v4

    return v4
.end method

.method private static normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1045
    if-eqz p0, :cond_0

    const-string/jumbo v0, "\u2011"

    const-string/jumbo v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static normalizeKeywords(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1056
    if-eqz p0, :cond_0

    const-string/jumbo v0, "[,]\\s*"

    const-string/jumbo v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1049
    if-eqz p0, :cond_0

    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "nohyphen":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 1052
    .local v1, "normalized":Ljava/lang/String;
    sget-object v2, Lcom/android/settings_ex/search/Index;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1049
    .end local v0    # "nohyphen":Ljava/lang/String;
    .end local v1    # "normalized":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    .restart local v0    # "nohyphen":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/search/Index;->addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/android/settings_ex/search/Index;->updateInternal()V

    .line 475
    :cond_0
    return-void
.end method

.method private updateInternal()V
    .locals 5

    .prologue
    .line 555
    iget-object v3, p0, Lcom/android/settings_ex/search/Index;->mDataToProcess:Lcom/android/settings_ex/search/Index$UpdateData;

    monitor-enter v3

    .line 556
    :try_start_0
    new-instance v1, Lcom/android/settings_ex/search/Index$UpdateIndexTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/search/Index$UpdateIndexTask;-><init>(Lcom/android/settings_ex/search/Index;Lcom/android/settings_ex/search/Index$UpdateIndexTask;)V

    .line 557
    .local v1, "task":Lcom/android/settings_ex/search/Index$UpdateIndexTask;
    iget-object v2, p0, Lcom/android/settings_ex/search/Index;->mDataToProcess:Lcom/android/settings_ex/search/Index$UpdateData;

    invoke-virtual {v2}, Lcom/android/settings_ex/search/Index$UpdateData;->copy()Lcom/android/settings_ex/search/Index$UpdateData;

    move-result-object v0

    .line 558
    .local v0, "copy":Lcom/android/settings_ex/search/Index$UpdateData;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/settings_ex/search/Index$UpdateData;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/search/Index$UpdateIndexTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 559
    iget-object v2, p0, Lcom/android/settings_ex/search/Index;->mDataToProcess:Lcom/android/settings_ex/search/Index$UpdateData;

    invoke-virtual {v2}, Lcom/android/settings_ex/search/Index$UpdateData;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 554
    return-void

    .line 555
    .end local v0    # "copy":Lcom/android/settings_ex/search/Index$UpdateData;
    .end local v1    # "task":Lcom/android/settings_ex/search/Index$UpdateIndexTask;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 7
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "updatedTitle"    # Ljava/lang/String;
    .param p4, "normalizedTitle"    # Ljava/lang/String;
    .param p5, "updatedSummaryOn"    # Ljava/lang/String;
    .param p6, "normalizedSummaryOn"    # Ljava/lang/String;
    .param p7, "updatedSummaryOff"    # Ljava/lang/String;
    .param p8, "normalizedSummaryOff"    # Ljava/lang/String;
    .param p9, "entries"    # Ljava/lang/String;
    .param p10, "className"    # Ljava/lang/String;
    .param p11, "screenTitle"    # Ljava/lang/String;
    .param p12, "iconResId"    # I
    .param p13, "rank"    # I
    .param p14, "spaceDelimitedKeywords"    # Ljava/lang/String;
    .param p15, "intentAction"    # Ljava/lang/String;
    .param p16, "intentTargetPackage"    # Ljava/lang/String;
    .param p17, "intentTargetClass"    # Ljava/lang/String;
    .param p18, "enabled"    # Z
    .param p19, "key"    # Ljava/lang/String;
    .param p20, "userId"    # I

    .prologue
    .line 1066
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1067
    return-void

    .line 1072
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1076
    .local v1, "docId":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1077
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "docid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1078
    const-string/jumbo v4, "locale"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const-string/jumbo v4, "data_rank"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1080
    const-string/jumbo v4, "data_title"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const-string/jumbo v4, "data_title_normalized"

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string/jumbo v4, "data_summary_on"

    invoke-virtual {v3, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const-string/jumbo v4, "data_summary_on_normalized"

    invoke-virtual {v3, v4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string/jumbo v4, "data_summary_off"

    invoke-virtual {v3, v4, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string/jumbo v4, "data_summary_off_normalized"

    invoke-virtual {v3, v4, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string/jumbo v4, "data_entries"

    move-object/from16 v0, p9

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string/jumbo v4, "data_keywords"

    move-object/from16 v0, p14

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-string/jumbo v4, "class_name"

    move-object/from16 v0, p10

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string/jumbo v4, "screen_title"

    move-object/from16 v0, p11

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const-string/jumbo v4, "intent_action"

    move-object/from16 v0, p15

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string/jumbo v4, "intent_target_package"

    move-object/from16 v0, p16

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string/jumbo v4, "intent_target_class"

    move-object/from16 v0, p17

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string/jumbo v4, "icon"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1094
    const-string/jumbo v4, "enabled"

    invoke-static/range {p18 .. p18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1095
    const-string/jumbo v4, "data_key_reference"

    move-object/from16 v0, p19

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const-string/jumbo v4, "user_id"

    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1098
    const-string/jumbo v4, "setting search"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "className==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1099
    const-string/jumbo v6, "updatedTitle ===="

    .line 1098
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1100
    const-string/jumbo v6, "updatedSummaryOn ===="

    .line 1098
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1101
    const-string/jumbo v6, "normalizedSummaryOff ===="

    .line 1098
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1102
    const-string/jumbo v6, "spaceDelimitedKeywords ===="

    .line 1098
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p14

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const-string/jumbo v4, "prefs_index"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1064
    return-void
.end method

.method private updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 21
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "summaryOn"    # Ljava/lang/String;
    .param p5, "summaryOff"    # Ljava/lang/String;
    .param p6, "entries"    # Ljava/lang/String;
    .param p7, "className"    # Ljava/lang/String;
    .param p8, "screenTitle"    # Ljava/lang/String;
    .param p9, "iconResId"    # I
    .param p10, "rank"    # I
    .param p11, "keywords"    # Ljava/lang/String;
    .param p12, "intentAction"    # Ljava/lang/String;
    .param p13, "intentTargetPackage"    # Ljava/lang/String;
    .param p14, "intentTargetClass"    # Ljava/lang/String;
    .param p15, "enabled"    # Z
    .param p16, "key"    # Ljava/lang/String;
    .param p17, "userId"    # I

    .prologue
    .line 1027
    invoke-static/range {p3 .. p3}, Lcom/android/settings_ex/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1028
    .local v3, "updatedTitle":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/settings_ex/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1029
    .local v5, "updatedSummaryOn":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/android/settings_ex/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1031
    .local v7, "updatedSummaryOff":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1032
    .local v4, "normalizedTitle":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings_ex/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1033
    .local v6, "normalizedSummaryOn":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings_ex/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1035
    .local v8, "normalizedSummaryOff":Ljava/lang/String;
    invoke-static/range {p11 .. p11}, Lcom/android/settings_ex/search/Index;->normalizeKeywords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "spaceDelimitedKeywords":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move/from16 v18, p15

    move-object/from16 v19, p16

    move/from16 v20, p17

    .line 1037
    invoke-direct/range {v0 .. v20}, Lcom/android/settings_ex/search/Index;->updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 1025
    return-void
.end method


# virtual methods
.method public addIndexableData(Landroid/provider/SearchIndexableData;)V
    .locals 2
    .param p1, "data"    # Landroid/provider/SearchIndexableData;

    .prologue
    .line 403
    iget-object v1, p0, Lcom/android/settings_ex/search/Index;->mDataToProcess:Lcom/android/settings_ex/search/Index$UpdateData;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/search/Index;->mDataToProcess:Lcom/android/settings_ex/search/Index$UpdateData;

    iget-object v0, v0, Lcom/android/settings_ex/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 402
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addIndexableData([Landroid/provider/SearchIndexableResource;)V
    .locals 5
    .param p1, "array"    # [Landroid/provider/SearchIndexableResource;

    .prologue
    .line 409
    iget-object v3, p0, Lcom/android/settings_ex/search/Index;->mDataToProcess:Lcom/android/settings_ex/search/Index$UpdateData;

    monitor-enter v3

    .line 410
    :try_start_0
    array-length v0, p1

    .line 411
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 412
    iget-object v2, p0, Lcom/android/settings_ex/search/Index;->mDataToProcess:Lcom/android/settings_ex/search/Index$UpdateData;

    iget-object v2, v2, Lcom/android/settings_ex/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    aget-object v4, p1, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    .line 408
    return-void

    .line 409
    .end local v0    # "count":I
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public addNonIndexableKeys(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings_ex/search/Index;->mDataToProcess:Lcom/android/settings_ex/search/Index$UpdateData;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/search/Index;->mDataToProcess:Lcom/android/settings_ex/search/Index$UpdateData;

    iget-object v0, v0, Lcom/android/settings_ex/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 423
    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addSavedQuery(Ljava/lang/String;)J
    .locals 8
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 292
    new-instance v2, Lcom/android/settings_ex/search/Index$SaveSearchQueryTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/search/Index$SaveSearchQueryTask;-><init>(Lcom/android/settings_ex/search/Index;Lcom/android/settings_ex/search/Index$SaveSearchQueryTask;)V

    .line 293
    .local v2, "task":Lcom/android/settings_ex/search/Index$SaveSearchQueryTask;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/search/Index$SaveSearchQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 295
    :try_start_0
    invoke-virtual {v2}, Lcom/android/settings_ex/search/Index$SaveSearchQueryTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string/jumbo v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot insert saved query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    return-wide v6

    .line 296
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot insert saved query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    return-wide v6
.end method

.method public deleteIndexableData(Landroid/provider/SearchIndexableData;)V
    .locals 2
    .param p1, "data"    # Landroid/provider/SearchIndexableData;

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/settings_ex/search/Index;->mDataToProcess:Lcom/android/settings_ex/search/Index$UpdateData;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/search/Index;->mDataToProcess:Lcom/android/settings_ex/search/Index$UpdateData;

    iget-object v0, v0, Lcom/android/settings_ex/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 417
    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/android/settings_ex/search/Index;->buildSuggestionsSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "sql":Ljava/lang/String;
    const-string/jumbo v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Suggestions query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0}, Lcom/android/settings_ex/search/Index;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public search(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 239
    invoke-direct {p0}, Lcom/android/settings_ex/search/Index;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 240
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x2

    new-array v0, v5, [Landroid/database/Cursor;

    .line 242
    .local v0, "cursors":[Landroid/database/Cursor;
    sget-object v5, Lcom/android/settings_ex/search/Index;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    invoke-direct {p0, p1, v5, v9}, Lcom/android/settings_ex/search/Index;->buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "primarySql":Ljava/lang/String;
    const-string/jumbo v5, "Index"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Search primary query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v1, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v0, v8

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    .line 248
    sget-object v5, Lcom/android/settings_ex/search/Index;->MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

    invoke-direct {p0, p1, v5, v8}, Lcom/android/settings_ex/search/Index;->buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .local v4, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v5, " EXCEPT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "secondarySql":Ljava/lang/String;
    const-string/jumbo v5, "Index"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Search secondary query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v1, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v0, v9

    .line 256
    new-instance v5, Landroid/database/MergeCursor;

    invoke-direct {v5, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v5
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings_ex/search/Index;->mContext:Landroid/content/Context;

    .line 230
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/android/settings_ex/search/Index$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/search/Index$1;-><init>(Lcom/android/settings_ex/search/Index;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method public updateFromClassNameResource(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "rebuild"    # Z
    .param p3, "includeInSearchResults"    # Z

    .prologue
    .line 491
    if-nez p1, :cond_0

    .line 492
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "class name cannot be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/search/SearchIndexableResources;->getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;

    move-result-object v0

    .line 495
    .local v0, "res":Landroid/provider/SearchIndexableResource;
    if-nez v0, :cond_1

    .line 496
    const-string/jumbo v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find SearchIndexableResources for class name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void

    .line 499
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/search/Index;->mContext:Landroid/content/Context;

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    .line 500
    iput-boolean p3, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    .line 501
    new-instance v1, Lcom/android/settings_ex/search/Index$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/settings_ex/search/Index$2;-><init>(Lcom/android/settings_ex/search/Index;ZLandroid/provider/SearchIndexableResource;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 490
    return-void
.end method

.method public updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V
    .locals 1
    .param p1, "data"    # Landroid/provider/SearchIndexableData;

    .prologue
    .line 516
    new-instance v0, Lcom/android/settings_ex/search/Index$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/search/Index$3;-><init>(Lcom/android/settings_ex/search/Index;Landroid/provider/SearchIndexableData;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 515
    return-void
.end method
