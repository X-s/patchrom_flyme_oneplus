.class public Lcom/amap/api/mapcore2d/dh;
.super Ljava/lang/Object;
.source "DBOperation.java"


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/api/mapcore2d/dg;",
            ">;",
            "Lcom/amap/api/mapcore2d/dg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/mapcore2d/dm;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/amap/api/mapcore2d/dg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/dh;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/dg;)V
    .locals 6

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/dm;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/dg;->a()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-interface {p2}, Lcom/amap/api/mapcore2d/dg;->b()I

    move-result v4

    const/4 v3, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/dm;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/amap/api/mapcore2d/dg;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->a:Lcom/amap/api/mapcore2d/dm;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    iput-object p2, p0, Lcom/amap/api/mapcore2d/dh;->c:Lcom/amap/api/mapcore2d/dg;

    .line 51
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Lcom/amap/api/mapcore2d/di;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 474
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 475
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/di;->b()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 476
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 480
    return-object v1

    .line 476
    :cond_0
    aget-object v4, v2, v0

    .line 477
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 478
    invoke-direct {p0, p1, v4, v1}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 517
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 506
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->a:Lcom/amap/api/mapcore2d/dm;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/dm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 510
    if-eqz p1, :cond_1

    .line 514
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "DBOperation"

    const-string/jumbo v2, "getReadAbleDataBase"

    .line 511
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/Class;)Lcom/amap/api/mapcore2d/dg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/api/mapcore2d/dg;",
            ">;)",
            "Lcom/amap/api/mapcore2d/dg;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    const-class v1, Lcom/amap/api/mapcore2d/dh;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/dh;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore2d/dh;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/dg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore2d/dh;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/database/Cursor;Ljava/lang/Class;Lcom/amap/api/mapcore2d/di;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/amap/api/mapcore2d/di;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 372
    invoke-interface {p3}, Lcom/amap/api/mapcore2d/di;->b()Z

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 373
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 374
    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 375
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 376
    array-length v4, v2

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    .line 417
    return-object v3

    .line 376
    :cond_0
    aget-object v5, v2, v1

    .line 377
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Lcom/amap/api/mapcore2d/dj;

    .line 378
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_1

    .line 382
    check-cast v0, Lcom/amap/api/mapcore2d/dj;

    .line 383
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/dj;->b()I

    move-result v6

    .line 384
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/dj;->a()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 386
    packed-switch v6, :pswitch_data_0

    .line 376
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 388
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 389
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 392
    :pswitch_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    .line 393
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 396
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 397
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 400
    :pswitch_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    .line 401
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 404
    :pswitch_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 408
    :pswitch_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    .line 409
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 412
    :pswitch_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 413
    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private a(Lcom/amap/api/mapcore2d/di;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amap/api/mapcore2d/di;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 543
    if-eqz p1, :cond_0

    .line 546
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/di;->a()Ljava/lang/String;

    move-result-object v0

    .line 547
    return-object v0

    .line 544
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 80
    if-eqz p0, :cond_0

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    .line 85
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    .line 81
    return-object v0

    .line 85
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    if-nez v1, :cond_2

    const-string/jumbo v5, " and "

    .line 91
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 92
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_1
    move v1, v0

    .line 95
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " = \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 89
    goto :goto_1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 213
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/dh;->b(Ljava/lang/Class;)Lcom/amap/api/mapcore2d/di;

    move-result-object v0

    .line 214
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/dh;->a(Lcom/amap/api/mapcore2d/di;)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    if-nez p2, :cond_2

    .line 219
    :cond_0
    return-void

    .line 216
    :cond_1
    return-void

    .line 218
    :cond_2
    if-eqz p1, :cond_0

    .line 221
    invoke-direct {p0, p2, v0}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/Object;Lcom/amap/api/mapcore2d/di;)Landroid/content/ContentValues;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_3

    .line 225
    invoke-virtual {p1, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 226
    return-void

    .line 223
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    const-class v0, Lcom/amap/api/mapcore2d/dj;

    .line 422
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_0

    .line 426
    check-cast v0, Lcom/amap/api/mapcore2d/dj;

    .line 427
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/dj;->b()I

    move-result v1

    .line 429
    packed-switch v1, :pswitch_data_0

    .line 470
    :goto_0
    return-void

    .line 424
    :cond_0
    return-void

    .line 432
    :pswitch_0
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 433
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/dj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 467
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 437
    :pswitch_1
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v1

    .line 438
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/dj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_0

    .line 442
    :pswitch_2
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 443
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/dj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 447
    :pswitch_3
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v2

    .line 448
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/dj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo v1, ""

    .line 452
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/dj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :pswitch_5
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v1

    .line 458
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/dj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 462
    :pswitch_6
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 463
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/dj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private a(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    .prologue
    .line 538
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 491
    if-eqz p1, :cond_0

    .line 494
    if-nez p2, :cond_1

    .line 499
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0

    .line 492
    :cond_0
    return-object v0

    .line 495
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 527
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->a:Lcom/amap/api/mapcore2d/dm;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/dm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 522
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DBOperation"

    const-string/jumbo v2, "getWriteDatabase"

    .line 530
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Ljava/lang/Class;)Lcom/amap/api/mapcore2d/di;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/amap/api/mapcore2d/di;"
        }
    .end annotation

    .prologue
    const-class v0, Lcom/amap/api/mapcore2d/di;

    .line 552
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 554
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    check-cast v0, Lcom/amap/api/mapcore2d/di;

    .line 558
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 555
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 276
    iget-object v9, p0, Lcom/amap/api/mapcore2d/dh;->c:Lcom/amap/api/mapcore2d/dg;

    monitor-enter v9

    .line 277
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/dh;->b(Ljava/lang/Class;)Lcom/amap/api/mapcore2d/di;

    move-result-object v11

    .line 280
    invoke-direct {p0, v11}, Lcom/amap/api/mapcore2d/dh;->a(Lcom/amap/api/mapcore2d/di;)Ljava/lang/String;

    move-result-object v1

    .line 281
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 285
    :cond_0
    monitor-exit v9

    return-object v10

    .line 282
    :cond_1
    invoke-direct {p0, p3}, Lcom/amap/api/mapcore2d/dh;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    .line 331
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 284
    :cond_2
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 288
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 291
    if-eqz v1, :cond_5

    .line 296
    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_8

    .line 307
    if-nez v1, :cond_f

    .line 317
    :cond_3
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_10

    .line 329
    :cond_4
    :goto_3
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v10

    .line 292
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 307
    if-nez v1, :cond_d

    .line 317
    :cond_6
    :goto_4
    :try_start_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_e

    .line 294
    :cond_7
    :goto_5
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v10

    .line 297
    :cond_8
    :try_start_7
    invoke-direct {p0, v1, p2, v11}, Lcom/amap/api/mapcore2d/dh;->a(Landroid/database/Cursor;Ljava/lang/Class;Lcom/amap/api/mapcore2d/di;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 327
    :catch_0
    move-exception v0

    .line 301
    :goto_6
    if-eqz p3, :cond_a

    .line 307
    :goto_7
    if-nez v1, :cond_11

    .line 317
    :cond_9
    :goto_8
    :try_start_8
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    .line 318
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_3

    .line 326
    move-exception v0

    .line 322
    if-nez p3, :cond_4

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    .line 323
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :cond_a
    :try_start_9
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "searchListData"

    .line 302
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    .line 327
    :catchall_1
    move-exception v0

    .line 307
    :goto_9
    if-nez v1, :cond_12

    .line 317
    :cond_b
    :goto_a
    :try_start_a
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_13

    .line 306
    :cond_c
    :goto_b
    throw v0

    .line 308
    :cond_d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 315
    move-exception v0

    .line 311
    if-nez p3, :cond_6

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    .line 312
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 318
    :cond_e
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_5

    .line 326
    move-exception v0

    .line 322
    if-nez p3, :cond_7

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    .line 323
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 308
    :cond_f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 315
    move-exception v0

    .line 311
    if-nez p3, :cond_3

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    .line 312
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 318
    :cond_10
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto/16 :goto_3

    .line 326
    move-exception v0

    .line 322
    if-nez p3, :cond_4

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    .line 323
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 308
    :cond_11
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 315
    move-exception v0

    .line 311
    if-nez p3, :cond_9

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    .line 312
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 308
    :cond_12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 315
    move-exception v1

    .line 311
    if-nez p3, :cond_b

    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "searchListData"

    .line 312
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 318
    :cond_13
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v1, 0x0

    .line 319
    iput-object v1, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_b

    .line 326
    move-exception v1

    .line 322
    if-nez p3, :cond_c

    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "searchListData"

    .line 323
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_b

    .line 327
    :catchall_2
    move-exception v0

    move-object v1, v8

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v1, v8

    goto/16 :goto_6
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/Object;Z)V

    .line 188
    return-void
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dh;->c:Lcom/amap/api/mapcore2d/dg;

    monitor-enter v1

    .line 194
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/dh;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 195
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore2d/dh;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 208
    :cond_0
    :goto_0
    monitor-exit v1

    .line 209
    return-void

    .line 196
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 207
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "insertData"

    .line 201
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 207
    :catchall_1
    move-exception v0

    .line 205
    :try_start_5
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_3

    .line 203
    :goto_1
    throw v0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 204
    :cond_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    .line 205
    iput-object v2, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dh;->c:Lcom/amap/api/mapcore2d/dg;

    monitor-enter v1

    .line 108
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/dh;->b(Ljava/lang/Class;)Lcom/amap/api/mapcore2d/di;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/dh;->a(Lcom/amap/api/mapcore2d/di;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore2d/dh;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 114
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 118
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3

    .line 129
    :cond_0
    :goto_0
    monitor-exit v1

    .line 130
    return-void

    .line 111
    :cond_1
    monitor-exit v1

    return-void

    .line 115
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 126
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "deleteData"

    .line 120
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 126
    :catchall_1
    move-exception v0

    .line 124
    :try_start_5
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_4

    .line 122
    :goto_1
    throw v0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 123
    :cond_4
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    .line 124
    iput-object v2, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 171
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dh;->c:Lcom/amap/api/mapcore2d/dg;

    monitor-enter v1

    .line 134
    if-eqz p2, :cond_1

    .line 137
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/dh;->b(Ljava/lang/Class;)Lcom/amap/api/mapcore2d/di;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/dh;->a(Lcom/amap/api/mapcore2d/di;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 142
    invoke-direct {p0, p2, v0}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/Object;Lcom/amap/api/mapcore2d/di;)Landroid/content/ContentValues;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_3

    .line 146
    invoke-direct {p0, p3}, Lcom/amap/api/mapcore2d/dh;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 147
    iget-object v3, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    .line 151
    :try_start_1
    iget-object v3, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    .line 166
    :cond_0
    :goto_0
    monitor-exit v1

    .line 167
    return-void

    .line 135
    :cond_1
    monitor-exit v1

    return-void

    .line 140
    :cond_2
    monitor-exit v1

    return-void

    .line 144
    :cond_3
    monitor-exit v1

    return-void

    .line 148
    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 153
    if-eqz p3, :cond_5

    .line 156
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_5
    :try_start_5
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "updateData"

    .line 154
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 163
    :catchall_1
    move-exception v0

    .line 161
    :try_start_6
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_7

    .line 159
    :goto_2
    throw v0

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 160
    :cond_7
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    .line 161
    iput-object v2, p0, Lcom/amap/api/mapcore2d/dh;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
