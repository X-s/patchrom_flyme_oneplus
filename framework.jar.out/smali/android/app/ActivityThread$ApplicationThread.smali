.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/ApplicationThreadNative;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"


# instance fields
.field private mLastProcessState:I

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method static synthetic -wrap0(Landroid/app/ActivityThread$ApplicationThread;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    .line 687
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    .line 690
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    .line 687
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ApplicationThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private dumpDatabaseInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1235
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1236
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1237
    .local v0, "printer":Landroid/util/PrintWriterPrinter;
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1234
    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZ)V
    .locals 54
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z

    .prologue
    .line 1092
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long v12, v4, v6

    .line 1093
    .local v12, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long v14, v4, v6

    .line 1094
    .local v14, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long v16, v4, v6

    .line 1096
    .local v16, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v39

    .line 1097
    .local v39, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Runtime;->gc()V

    .line 1098
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long v18, v4, v6

    .line 1099
    .local v18, "dalvikMax":J
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long v22, v4, v6

    .line 1100
    .local v22, "dalvikFree":J
    sub-long v20, v18, v22

    .line 1102
    .local v20, "dalvikAllocated":J
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/Class;

    move-object/from16 v33, v0

    .line 1103
    const-class v4, Landroid/app/ContextImpl;

    const/4 v5, 0x0

    aput-object v4, v33, v5

    .line 1104
    const-class v4, Landroid/app/Activity;

    const/4 v5, 0x1

    aput-object v4, v33, v5

    .line 1105
    const-class v4, Landroid/webkit/WebView;

    const/4 v5, 0x2

    aput-object v4, v33, v5

    .line 1106
    const-class v4, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    const/4 v5, 0x3

    aput-object v4, v33, v5

    .line 1108
    .local v33, "classesToCount":[Ljava/lang/Class;
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-static {v0, v4}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v38

    .line 1109
    .local v38, "instanceCounts":[J
    const/4 v4, 0x0

    aget-wide v28, v38, v4

    .line 1110
    .local v28, "appContextInstanceCount":J
    const/4 v4, 0x1

    aget-wide v26, v38, v4

    .line 1111
    .local v26, "activityInstanceCount":J
    const/4 v4, 0x2

    aget-wide v52, v38, v4

    .line 1112
    .local v52, "webviewInstanceCount":J
    const/4 v4, 0x3

    aget-wide v40, v38, v4

    .line 1114
    .local v40, "openSslSocketCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v48

    .line 1115
    .local v48, "viewInstanceCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v50

    .line 1116
    .local v50, "viewRootInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v35

    .line 1117
    .local v35, "globalAssetCount":I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v36

    .line 1118
    .local v36, "globalAssetManagerCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v31

    .line 1119
    .local v31, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v32

    .line 1120
    .local v32, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v30

    .line 1121
    .local v30, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v44

    .line 1122
    .local v44, "parcelSize":J
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v42

    .line 1123
    .local v42, "parcelCount":J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v47

    .line 1126
    .local v47, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    .line 1127
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v11, v4, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    :goto_0
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 1125
    invoke-static/range {v4 .. v23}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V

    .line 1131
    if-eqz p3, :cond_2

    .line 1136
    move-object/from16 v0, p1

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1137
    move-object/from16 v0, p1

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1138
    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1139
    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1141
    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1142
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1143
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1144
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1146
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1147
    move-object/from16 v0, p1

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1150
    move-object/from16 v0, v47

    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v4, v4, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1151
    move-object/from16 v0, v47

    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v4, v4, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1152
    move-object/from16 v0, v47

    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v4, v4, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1153
    move-object/from16 v0, v47

    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v4, v4, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1154
    const/16 v37, 0x0

    .local v37, "i":I
    :goto_1
    move-object/from16 v0, v47

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v37

    if-ge v0, v4, :cond_1

    .line 1155
    move-object/from16 v0, v47

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1156
    .local v34, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1157
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v34

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1158
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v34

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1159
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v34

    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1160
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1161
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    .line 1127
    .end local v34    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v37    # "i":I
    :cond_0
    const-string/jumbo v11, "unknown"

    goto/16 :goto_0

    .line 1163
    .restart local v37    # "i":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1165
    return-void

    .line 1168
    .end local v37    # "i":I
    :cond_2
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1169
    const-string/jumbo v4, " Objects"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1170
    const-string/jumbo v4, "%21s %8d %21s %8d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Views:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "ViewRootImpl:"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 1171
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1170
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    const-string/jumbo v4, "%21s %8d %21s %8d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "AppContexts:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1174
    const-string/jumbo v6, "Activities:"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1173
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1176
    const-string/jumbo v4, "%21s %8d %21s %8d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Assets:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1177
    const-string/jumbo v6, "AssetManagers:"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1176
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    const-string/jumbo v4, "%21s %8d %21s %8d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Local Binders:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1180
    const-string/jumbo v6, "Proxy Binders:"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1179
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    const-string/jumbo v4, "%21s %8d %21s %8d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Parcel memory:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-wide/16 v6, 0x400

    div-long v6, v44, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1182
    const-string/jumbo v6, "Parcel count:"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1181
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    const-string/jumbo v4, "%21s %8d %21s %8d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Death Recipients:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1184
    const-string/jumbo v6, "OpenSSL Sockets:"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1183
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1185
    const-string/jumbo v4, "%21s %8d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "WebViews:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1188
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    const-string/jumbo v4, " SQL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1190
    const-string/jumbo v4, "%21s %8d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "MEMORY_USED:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v47

    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v6, v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1191
    const-string/jumbo v4, "%21s %8d %21s %8d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "PAGECACHE_OVERFLOW:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1192
    move-object/from16 v0, v47

    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v6, v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "MALLOC_SIZE:"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    move-object/from16 v0, v47

    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v6, v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1191
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1193
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    move-object/from16 v0, v47

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1195
    .local v24, "N":I
    if-lez v24, :cond_6

    .line 1196
    const-string/jumbo v4, " DATABASES"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1197
    const-string/jumbo v4, "  %8s %8s %14s %14s  %s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "pgsz"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v6, "dbsz"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "Lookaside(b)"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string/jumbo v6, "cache"

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1198
    const-string/jumbo v6, "Dbname"

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 1197
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1199
    const/16 v37, 0x0

    .restart local v37    # "i":I
    :goto_2
    move/from16 v0, v37

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 1200
    move-object/from16 v0, v47

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1201
    .restart local v34    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string/jumbo v5, "  %8s %8s %14s %14s  %s"

    const/4 v4, 0x5

    new-array v6, v4, [Ljava/lang/Object;

    .line 1202
    move-object/from16 v0, v34

    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_3

    move-object/from16 v0, v34

    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    :goto_3
    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 1203
    move-object/from16 v0, v34

    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_4

    move-object/from16 v0, v34

    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    :goto_4
    const/4 v7, 0x1

    aput-object v4, v6, v7

    .line 1204
    move-object/from16 v0, v34

    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    if-lez v4, :cond_5

    move-object/from16 v0, v34

    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_5
    const/4 v7, 0x2

    aput-object v4, v6, v7

    .line 1205
    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v4, v6, v7

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    const/4 v7, 0x4

    aput-object v4, v6, v7

    .line 1201
    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1199
    add-int/lit8 v37, v37, 0x1

    goto :goto_2

    .line 1202
    :cond_3
    const-string/jumbo v4, " "

    goto :goto_3

    .line 1203
    :cond_4
    const-string/jumbo v4, " "

    goto :goto_4

    .line 1204
    :cond_5
    const-string/jumbo v4, " "

    goto :goto_5

    .line 1210
    .end local v34    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v37    # "i":I
    :cond_6
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v25

    .line 1211
    .local v25, "assetAlloc":Ljava/lang/String;
    if-eqz v25, :cond_7

    .line 1212
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1213
    const-string/jumbo v4, " Asset Allocations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1214
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1218
    :cond_7
    if-eqz p7, :cond_8

    .line 1219
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v4, :cond_9

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    .line 1219
    const/16 v46, 0x1

    .line 1222
    :goto_6
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1223
    const-string/jumbo v4, " Unreachable memory"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    const/16 v4, 0x64

    move/from16 v0, v46

    invoke-static {v4, v0}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    :cond_8
    return-void

    .line 1221
    :cond_9
    sget-boolean v46, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .local v46, "showContents":Z
    goto :goto_6
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 693
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-get0(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v1

    monitor-enter v1

    .line 694
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 694
    if-eqz v0, :cond_1

    .line 696
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 692
    return-void

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "instrumentationName"    # Landroid/content/ComponentName;
    .param p5, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p6, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p7, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p8, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p9, "debugMode"    # I
    .param p10, "enableBinderTracking"    # Z
    .param p11, "trackAllocation"    # Z
    .param p12, "isRestrictedBackupMode"    # Z
    .param p13, "persistent"    # Z
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p17, "coreSettings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/app/ProfilerInfo;",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "Landroid/app/IUiAutomationConnection;",
            "IZZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 916
    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p16, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz p16, :cond_0

    invoke-static {}, Landroid/app/EmbryoApp;->isEmbryo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 922
    :cond_0
    :goto_0
    move-object/from16 v0, p17

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 924
    new-instance v1, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v1}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 925
    .local v1, "data":Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 926
    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 927
    iput-object p3, v1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 928
    iput-object p4, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 929
    iput-object p6, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 930
    iput-object p7, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 931
    iput-object p8, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 932
    iput p9, v1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 933
    iput-boolean p10, v1, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    .line 934
    iput-boolean p11, v1, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    .line 935
    move/from16 v0, p12

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 936
    move/from16 v0, p13

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 937
    move-object/from16 v0, p14

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 938
    move-object/from16 v0, p15

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 939
    iput-object p5, v1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    .line 940
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x6e

    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 911
    return-void

    .line 919
    .end local v1    # "data":Landroid/app/ActivityThread$AppBindData;
    :cond_1
    invoke-static/range {p16 .. p16}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public clearDnsCache()V
    .locals 1

    .prologue
    .line 962
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 965
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    .line 960
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1042
    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "activitytoken"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 1052
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1054
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1055
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1056
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 1057
    iput-object p4, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1058
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x88

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap33(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :goto_0
    return-void

    .line 1059
    :catch_0
    move-exception v6

    .line 1060
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "ActivityThread"

    const-string/jumbo v1, "dumpActivity failed"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1243
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-boolean v2, v2, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v2, :cond_0

    .line 1249
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1255
    .local v0, "dup":Landroid/os/ParcelFileDescriptor;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/ActivityThread$ApplicationThread$1;

    invoke-direct {v3, p0, v0, p2}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1242
    .end local v0    # "dup":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-void

    .line 1250
    :catch_0
    move-exception v1

    .line 1251
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not dup FD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    return-void

    .line 1266
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1230
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, p1}, Landroid/app/ActivityThread;->-wrap1(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    .line 1231
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 1229
    return-void
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .param p1, "managed"    # Z
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1024
    new-instance v2, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    .line 1025
    .local v2, "dhd":Landroid/app/ActivityThread$DumpHeapData;
    iput-object p2, v2, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 1026
    iput-object p3, v2, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1027
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p1, :cond_0

    move v3, v5

    :goto_0
    const/16 v1, 0x87

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap33(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V

    .line 1023
    return-void

    :cond_0
    move v3, v4

    .line 1027
    goto :goto_0
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z
    .param p8, "args"    # [Ljava/lang/String;

    .prologue
    .line 1081
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1082
    .local v8, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v8}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .local v1, "pw":Ljava/io/PrintWriter;
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 1084
    :try_start_0
    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1080
    return-void

    .line 1085
    :catchall_0
    move-exception v0

    .line 1086
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1085
    throw v0
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "providertoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1066
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1068
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1069
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1070
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1071
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap33(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    :goto_0
    return-void

    .line 1072
    :catch_0
    move-exception v6

    .line 1073
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "ActivityThread"

    const-string/jumbo v1, "dumpProvider failed"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 984
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 986
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 987
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 988
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 989
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap33(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :goto_0
    return-void

    .line 990
    :catch_0
    move-exception v6

    .line 991
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "ActivityThread"

    const-string/jumbo v1, "dumpService failed"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyCleartextNetwork([B)V
    .locals 1
    .param p1, "firstPacket"    # [B

    .prologue
    .line 1362
    invoke-static {}, Landroid/os/StrictMode;->vmCleartextNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    invoke-static {p1}, Landroid/os/StrictMode;->onCleartextNetworkDetected([B)V

    .line 1361
    :cond_0
    return-void
.end method

.method public processInBackground()V
    .locals 3

    .prologue
    const/16 v2, 0x78

    .line 979
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 980
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 978
    return-void
.end method

.method public profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 3
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .prologue
    .line 1020
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x7f

    invoke-static {v1, v2, p2, v0, p3}, Landroid/app/ActivityThread;->-wrap34(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 1019
    return-void

    .line 1020
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;II)V
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I
    .param p4, "sessionId"    # I

    .prologue
    .line 1278
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    .line 1279
    .local v0, "cmd":Landroid/app/ActivityThread$RequestAssistContextExtras;
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    .line 1280
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    .line 1281
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    .line 1282
    iput p4, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    .line 1283
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8f

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1277
    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "reportToActivity"    # Z

    .prologue
    .line 1014
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 1015
    new-instance v2, Landroid/app/ActivityThread$ActivityConfigChangeData;

    invoke-direct {v2, p1, p2}, Landroid/app/ActivityThread$ActivityConfigChangeData;-><init>(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 1014
    :goto_0
    const/16 v3, 0x7d

    invoke-static {v1, v3, v2, v0}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1013
    return-void

    .line 1015
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 1352
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x94

    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1351
    return-void

    .line 1352
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I

    .prologue
    .line 868
    const/4 v1, 0x0

    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 869
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 870
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 871
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 872
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 877
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 867
    return-void
.end method

.method public scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1347
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x93

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1346
    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 952
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 953
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x76

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 951
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1047
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1046
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "backupMode"    # I

    .prologue
    .line 838
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 839
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 840
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 841
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 843
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 837
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I

    .prologue
    .line 857
    const/4 v1, 0x0

    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 858
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 859
    .local v0, "s":Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 860
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 861
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 863
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 856
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I

    .prologue
    .line 809
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x6d

    invoke-static {v1, v2, p1, v0, p3}, Landroid/app/ActivityThread;->-wrap34(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 808
    return-void

    .line 809
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 848
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 849
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 850
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 852
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 847
    return-void
.end method

.method public scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1357
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x95

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1356
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    .prologue
    .line 944
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 943
    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 1337
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x91

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1336
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "ident"    # I
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "curConfig"    # Landroid/content/res/Configuration;
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "referrer"    # Ljava/lang/String;
    .param p9, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p10, "procState"    # I
    .param p11, "state"    # Landroid/os/Bundle;
    .param p12, "persistentState"    # Landroid/os/PersistableBundle;
    .param p15, "notResumed"    # Z
    .param p16, "isForward"    # Z
    .param p17, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;ZZ",
            "Landroid/app/ProfilerInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 760
    .local p13, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p14, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, p10, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 762
    new-instance v1, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v1}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 764
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 765
    iput p3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 766
    iput-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 767
    iput-object p8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    .line 768
    iput-object p9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 769
    iput-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 770
    iput-object p7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 771
    iput-object p11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 772
    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 774
    move-object/from16 v0, p13

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 775
    move-object/from16 v0, p14

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 777
    move/from16 v0, p15

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 778
    move/from16 v0, p16

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 780
    move-object/from16 v0, p17

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 782
    iput-object p6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 783
    invoke-direct {p0, p5}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 785
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x64

    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 758
    return-void
.end method

.method public scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1395
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1396
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1397
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1398
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9a

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1394
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    .prologue
    .line 1008
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1007
    return-void
.end method

.method public scheduleMultiWindowModeChanged(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isInMultiWindowMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1383
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x98

    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1382
    return-void

    .line 1383
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;Z)V
    .locals 3
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "andPause"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/os/IBinder;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 799
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$NewIntentData;-><init>()V

    .line 800
    .local v0, "data":Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    .line 801
    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    .line 802
    iput-boolean p3, v0, Landroid/app/ActivityThread$NewIntentData;->andPause:Z

    .line 804
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x70

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 798
    return-void
.end method

.method public scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 1306
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 1307
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1306
    const/16 v2, 0x92

    invoke-static {v0, v2, v1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1305
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z

    .prologue
    const/4 v2, 0x0

    .line 703
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-wrap0(Landroid/app/ActivityThread;)I

    move-result v5

    .line 706
    .local v5, "seq":I
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 707
    if-eqz p2, :cond_1

    const/16 v1, 0x66

    .line 709
    :goto_0
    if-eqz p3, :cond_2

    const/4 v3, 0x1

    :goto_1
    if-eqz p5, :cond_0

    const/4 v2, 0x2

    :cond_0
    or-int/2addr v3, v2

    move-object v2, p1

    move v4, p4

    .line 706
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap35(Landroid/app/ActivityThread;ILjava/lang/Object;III)V

    .line 702
    return-void

    .line 707
    :cond_1
    const/16 v1, 0x65

    goto :goto_0

    :cond_2
    move v3, v2

    .line 709
    goto :goto_1
.end method

.method public schedulePictureInPictureModeChanged(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isInPipMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1389
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x99

    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1388
    return-void

    .line 1389
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public schedulePreload(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Ljava/util/Map;)V
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/res/CompatibilityInfo;",
            "Landroid/content/res/Configuration;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1405
    .local p4, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/app/ActivityThread;->-set0(Ljava/lang/String;)Ljava/lang/String;

    .line 1406
    if-eqz p4, :cond_0

    .line 1408
    invoke-static {p4}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 1409
    invoke-static {}, Landroid/app/EmbryoApp;->setMyself()V

    .line 1411
    :cond_0
    invoke-static {}, Landroid/app/EmbryoApp;->getInstance()Landroid/app/EmbryoApp;

    move-result-object v1

    .line 1412
    .local v1, "app":Landroid/app/EmbryoApp;
    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v3}, Landroid/app/ActivityThread;->-get0(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v3

    invoke-virtual {v3, p3, p2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 1413
    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v3, p1, p2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 1414
    .local v0, "apk":Landroid/app/LoadedApk;
    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v3, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v2

    .line 1415
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/app/EmbryoApp;->attach(Landroid/content/Context;)V

    .line 1416
    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1}, Landroid/app/EmbryoApp;->getRunnable()Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 1404
    return-void
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZIII)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .param p10, "hasCode"    # I

    .prologue
    .line 826
    const/4 v2, 0x0

    move/from16 v0, p9

    invoke-virtual {p0, v0, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 827
    new-instance v1, Landroid/app/ActivityThread$ReceiverData;

    .line 828
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v9, p8

    move/from16 v10, p10

    .line 827
    invoke-direct/range {v1 .. v10}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;II)V

    .line 831
    .local v1, "r":Landroid/app/ActivityThread$ReceiverData;
    iput-object p2, v1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 832
    iput-object p3, v1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 833
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x71

    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 825
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "dataStr"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1001
    const/4 v0, 0x0

    invoke-virtual {p0, p9, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 1002
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1000
    return-void
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "preserveWindow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 793
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 794
    const/4 v8, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    .line 793
    invoke-virtual/range {v0 .. v9}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;ZZ)V

    .line 792
    return-void
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "processState"    # I
    .param p3, "isForward"    # Z
    .param p4, "resumeArgs"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 736
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-wrap0(Landroid/app/ActivityThread;)I

    move-result v5

    .line 739
    .local v5, "seq":I
    invoke-virtual {p0, p2, v4}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 740
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/16 v1, 0x6b

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap35(Landroid/app/ActivityThread;ILjava/lang/Object;III)V

    .line 735
    return-void

    :cond_0
    move v3, v4

    .line 740
    goto :goto_0
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 744
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ResultData;-><init>()V

    .line 745
    .local v0, "res":Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    .line 746
    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    .line 747
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6c

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 743
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskRemoved"    # Z
    .param p3, "startId"    # I
    .param p4, "flags"    # I
    .param p5, "args"    # Landroid/content/Intent;

    .prologue
    .line 890
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 891
    .local v0, "s":Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 892
    iput-boolean p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 893
    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 894
    iput p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 895
    iput-object p5, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 897
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x73

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 889
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    .prologue
    .line 731
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x89

    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 730
    return-void

    .line 731
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z
    .param p3, "configChanges"    # I

    .prologue
    .line 716
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-wrap0(Landroid/app/ActivityThread;)I

    move-result v5

    .line 719
    .local v5, "seq":I
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 720
    if-eqz p2, :cond_0

    const/16 v1, 0x67

    .line 721
    :goto_0
    const/4 v3, 0x0

    move-object v2, p1

    move v4, p3

    .line 719
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap35(Landroid/app/ActivityThread;ILjava/lang/Object;III)V

    .line 715
    return-void

    .line 720
    :cond_0
    const/16 v1, 0x68

    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 901
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 900
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    .prologue
    .line 948
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 947
    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .prologue
    .line 1302
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x90

    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1301
    return-void

    .line 1302
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 1298
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1297
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 881
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 882
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 883
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 885
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 880
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z

    .prologue
    .line 725
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 726
    if-eqz p2, :cond_0

    const/16 v0, 0x69

    .line 725
    :goto_0
    invoke-static {v1, v0, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 724
    return-void

    .line 726
    :cond_0
    const/16 v0, 0x6a

    goto :goto_0
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .prologue
    .line 1287
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1286
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "pacFileUrl"    # Landroid/net/Uri;

    .prologue
    .line 969
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 970
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v1

    .line 971
    .local v1, "network":Landroid/net/Network;
    if-eqz v1, :cond_0

    .line 972
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V

    .line 968
    :goto_0
    return-void

    .line 974
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setProcessState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1311
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 1310
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .param p1, "group"    # I

    .prologue
    .line 1036
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_0
    return-void

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startBinderTracking()V
    .locals 3

    .prologue
    .line 1369
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x96

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1368
    return-void
.end method

.method public stopBinderTrackingAndDump(Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 1375
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    const/16 v3, 0x97

    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    :goto_0
    return-void

    .line 1376
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;

    .prologue
    .line 1272
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1271
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 1291
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 1292
    .local v0, "ucd":Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 1293
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 1294
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1290
    return-void
.end method

.method public updateProcessState(IZ)V
    .locals 4
    .param p1, "processState"    # I
    .param p2, "fromIpc"    # Z

    .prologue
    .line 1315
    monitor-enter p0

    .line 1316
    :try_start_0
    iget v3, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    if-eq v3, p1, :cond_1

    .line 1317
    iput p1, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    .line 1319
    const/4 v1, 0x0

    .line 1320
    .local v1, "DALVIK_PROCESS_STATE_JANK_PERCEPTIBLE":I
    const/4 v0, 0x1

    .line 1321
    .local v0, "DALVIK_PROCESS_STATE_JANK_IMPERCEPTIBLE":I
    const/4 v2, 0x1

    .line 1323
    .local v2, "dalvikProcessState":I
    const/4 v3, 0x6

    if-gt p1, v3, :cond_0

    .line 1324
    const/4 v2, 0x0

    .line 1326
    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldalvik/system/VMRuntime;->updateProcessState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "DALVIK_PROCESS_STATE_JANK_IMPERCEPTIBLE":I
    .end local v1    # "DALVIK_PROCESS_STATE_JANK_PERCEPTIBLE":I
    .end local v2    # "dalvikProcessState":I
    :cond_1
    monitor-exit p0

    .line 1314
    return-void

    .line 1315
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final updateTimePrefs(Z)V
    .locals 0
    .param p1, "is24Hour"    # Z

    .prologue
    .line 1342
    invoke-static {p1}, Ljava/text/DateFormat;->set24HourTimePref(Z)V

    .line 1341
    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 956
    return-void
.end method
