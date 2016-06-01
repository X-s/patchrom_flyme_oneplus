.class public Lcom/oppo/tribune/provider/TribuneProvider;
.super Landroid/content/ContentProvider;
.source "TribuneProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "forum.db"

.field private static final DATABASE_VERSION:I = 0x5

.field public static final TAG:Ljava/lang/String;

.field private static URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final URI_USER_TABLE:I = 0x1

.field private static final URI_USER_TABLE_SEG:I = 0x2


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    const-class v0, Lcom/oppo/tribune/provider/TribuneProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/TribuneProvider;->TAG:Ljava/lang/String;

    .line 201
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/oppo/tribune/provider/TribuneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 202
    sget-object v0, Lcom/oppo/tribune/provider/TribuneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.oneplus.tuner.provider.data"

    const-string v2, "usertable"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    sget-object v0, Lcom/oppo/tribune/provider/TribuneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.oneplus.tuner.provider.data"

    const-string v2, "usertable/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v3, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 372
    const/4 v2, 0x0

    .line 374
    .local v2, "results":[Landroid/content/ContentProviderResult;
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 375
    iget-object v3, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :try_start_1
    iget-object v3, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    :goto_0
    return-object v2

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 376
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    .line 377
    .local v1, "oae":Landroid/content/OperationApplicationException;
    :try_start_2
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    :try_start_3
    iget-object v3, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 381
    :catch_2
    move-exception v0

    .line 382
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 379
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v1    # "oae":Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v3

    .line 380
    :try_start_4
    iget-object v4, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 383
    :goto_1
    throw v3

    .line 381
    :catch_3
    move-exception v0

    .line 382
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 286
    sget-object v6, Lcom/oppo/tribune/provider/TribuneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 287
    .local v2, "option":I
    const/4 v0, 0x0

    .line 292
    .local v0, "count":I
    packed-switch v2, :pswitch_data_0

    .line 314
    :goto_0
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/TribuneProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 316
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    invoke-virtual {v3, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 319
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return v0

    .line 295
    :pswitch_0
    :try_start_0
    const-string v4, "usertable"

    .line 296
    .local v4, "table":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 298
    .local v5, "where":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 300
    goto :goto_0

    .line 303
    .end local v4    # "table":Ljava/lang/String;
    .end local v5    # "where":Ljava/lang/StringBuilder;
    :pswitch_1
    const-string v4, "usertable"

    .line 304
    .restart local v4    # "table":Ljava/lang/String;
    iget-object v6, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 305
    goto :goto_0

    .line 310
    .end local v4    # "table":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 241
    sget-object v1, Lcom/oppo/tribune/provider/TribuneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 243
    .local v0, "option":I
    packed-switch v0, :pswitch_data_0

    .line 249
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.oppo.usertable"

    return-object v1

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x0

    .line 254
    sget-object v6, Lcom/oppo/tribune/provider/TribuneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 255
    .local v2, "option":I
    const-wide/16 v4, -0x1

    .line 258
    .local v4, "rowId":J
    packed-switch v2, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/TribuneProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 280
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v3, p1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    move-object v1, p1

    .line 282
    :goto_1
    return-object v1

    .line 261
    :pswitch_0
    :try_start_0
    iget-object v6, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "usertable"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 262
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 263
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oppo/tribune/provider/TribuneData$UserTable;->CONTENT_URI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 264
    .local v1, "newUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/TribuneProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 274
    .end local v1    # "newUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 177
    :try_start_0
    new-instance v1, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/oppo/tribune/provider/TribuneProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "forum.db"

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 179
    iget-object v1, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PRAGMA foreign_keys=ON;"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 189
    const/4 v1, 0x1

    .line 191
    :goto_1
    return v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 184
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1

    .line 191
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 210
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 211
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v1, Lcom/oppo/tribune/provider/TribuneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 213
    .local v10, "option":I
    packed-switch v10, :pswitch_data_0

    .line 224
    :goto_0
    const/4 v8, 0x0

    .line 226
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 229
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/TribuneProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_0
    :goto_1
    return-object v8

    .line 217
    .end local v8    # "cursor":Landroid/database/Cursor;
    :pswitch_0
    const-string v1, "usertable"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 231
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    if-eqz v8, :cond_0

    .line 233
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v5, "where":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 326
    .local v4, "table":Ljava/lang/String;
    sget-object v6, Lcom/oppo/tribune/provider/TribuneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 328
    .local v2, "option":I
    packed-switch v2, :pswitch_data_0

    .line 345
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 346
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 347
    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_0
    :goto_1
    const/4 v0, 0x0

    .line 355
    .local v0, "count":I
    :try_start_0
    iget-object v6, p0, Lcom/oppo/tribune/provider/TribuneProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, p2, v7, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 361
    :goto_2
    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/TribuneProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 363
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    invoke-virtual {v3, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 365
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    return v0

    .line 331
    .end local v0    # "count":I
    :pswitch_0
    const-string v4, "usertable"

    .line 332
    const-string v6, "uid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 337
    :pswitch_1
    const-string v4, "usertable"

    .line 339
    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 357
    .restart local v0    # "count":I
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
