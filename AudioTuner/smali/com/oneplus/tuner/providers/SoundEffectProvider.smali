.class public Lcom/oneplus/tuner/providers/SoundEffectProvider;
.super Landroid/content/ContentProvider;
.source "SoundEffectProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CONFIG_LOCAL:I = 0x1

.field private static final CONFIG_NOTSHAREDID:I = -0x1

.field private static final DATABASE_NAME:Ljava/lang/String; = "soundeffect.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SoundEffectProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final URI_MATCH_DOWNLOADED_EFFECTS:I = 0x1

.field private static final URI_MATCH_DOWNLOADED_EFFECTS_ID:I = 0xb

.field private static final URI_MATCH_EFFECTS:I = 0x0

.field private static final URI_MATCH_EFFECTS_ID:I = 0xa

.field private static final URI_MATCH_HISTORYS:I = 0x2

.field private static final URI_MATCH_HISTORYS_ID:I = 0xc

.field private static final URI_MATCH_WEBCACHE:I = 0x3

.field private static final URI_MATCH_WEBCACHE_ID:I = 0xd

.field private static mOpenHelper:Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/oneplus/tuner/providers/SoundEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 60
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.oneplus.tuner.providers.soundeffect"

    const-string v2, "soundEffects"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.oneplus.tuner.providers.soundeffect"

    const-string v2, "soundEffects/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.oneplus.tuner.providers.soundeffect"

    const-string v2, "downloadedSoundEffects"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.oneplus.tuner.providers.soundeffect"

    const-string v2, "downloadedSoundEffects/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.oneplus.tuner.providers.soundeffect"

    const-string v2, "searchHistory"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.oneplus.tuner.providers.soundeffect"

    const-string v2, "searchHistory/#"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.oneplus.tuner.providers.soundeffect"

    const-string v2, "webCache"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.oneplus.tuner.providers.soundeffect"

    const-string v2, "webCache/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 97
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 752
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 642
    if-eqz p2, :cond_0

    array-length v8, p2

    if-nez v8, :cond_1

    .line 643
    :cond_0
    const/4 v8, 0x0

    .line 676
    :goto_0
    return v8

    .line 644
    :cond_1
    const/4 v5, 0x0

    .line 645
    .local v5, "table":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 646
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "table":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 649
    .restart local v5    # "table":Ljava/lang/String;
    sget-object v8, Lcom/oneplus/tuner/providers/SoundEffectProvider;->mOpenHelper:Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 650
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v1, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;>;"
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 653
    array-length v4, p2

    .line 654
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 655
    const/4 v8, 0x0

    aget-object v9, p2, v3

    invoke-virtual {v2, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 656
    .local v6, "rowid":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_3

    .line 657
    const/4 v8, 0x0

    .line 668
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 648
    .end local v1    # "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;>;"
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v6    # "rowid":J
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 659
    .restart local v1    # "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;>;"
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    .restart local v6    # "rowid":J
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    .line 660
    :try_start_1
    new-instance v0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;

    invoke-direct {v0}, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;-><init>()V

    .line 661
    .local v0, "condition":Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;
    sget-object v8, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->INSERT:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    iput-object v8, v0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;->type:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    .line 662
    iput-wide v6, v0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;->id:J

    .line 663
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    .end local v0    # "condition":Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 666
    .end local v6    # "rowid":J
    :cond_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 676
    array-length v8, p2

    goto :goto_0

    .line 668
    .end local v3    # "i":I
    .end local v4    # "length":I
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userWhere"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 502
    sget-object v7, Lcom/oneplus/tuner/providers/SoundEffectProvider;->mOpenHelper:Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 503
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 504
    .local v5, "table":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .local v6, "whereClause":Ljava/lang/StringBuilder;
    sget-object v7, Lcom/oneplus/tuner/providers/SoundEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 506
    .local v4, "match":I
    packed-switch v4, :pswitch_data_0

    .line 548
    :pswitch_0
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown or unsupported URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 508
    :pswitch_1
    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :pswitch_2
    const-string v5, "soundEffects"

    .line 551
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 552
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 553
    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_0
    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 560
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 561
    .local v2, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v1, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;>;"
    new-instance v0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;

    invoke-direct {v0}, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;-><init>()V

    .line 563
    .local v0, "condition":Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;
    sget-object v7, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->DELETE:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    iput-object v7, v0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;->type:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    .line 564
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;->where:Ljava/lang/String;

    .line 565
    iput-object p3, v0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;->whereArgs:[Ljava/lang/String;

    .line 566
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    return v2

    .line 514
    .end local v0    # "condition":Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;
    .end local v1    # "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;>;"
    .end local v2    # "count":I
    :pswitch_3
    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :pswitch_4
    const-string v5, "downloadedSoundEffects"

    .line 518
    goto :goto_0

    .line 520
    :pswitch_5
    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :pswitch_6
    const-string v5, "searchHistory"

    .line 524
    goto :goto_0

    .line 526
    :pswitch_7
    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :pswitch_8
    const-string v5, "webCache"

    .line 530
    goto/16 :goto_0

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    .line 461
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 495
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/soundEffect"

    .line 477
    :goto_0
    return-object v0

    .line 465
    :pswitch_2
    const-string v0, "vnd.android.cursor.item/soundEffect"

    goto :goto_0

    .line 467
    :pswitch_3
    const-string v0, "vnd.android.cursor.dir/downloadedSoundEffect"

    goto :goto_0

    .line 469
    :pswitch_4
    const-string v0, "vnd.android.cursor.item/downloadedSoundEffect"

    goto :goto_0

    .line 471
    :pswitch_5
    const-string v0, "vnd.android.cursor.dir/searchHistory"

    goto :goto_0

    .line 473
    :pswitch_6
    const-string v0, "vnd.android.cursor.item/searchHistory"

    goto :goto_0

    .line 475
    :pswitch_7
    const-string v0, "vnd.android.cursor.dir/webCache"

    goto :goto_0

    .line 477
    :pswitch_8
    const-string v0, "vnd.android.cursor.item/webCache"

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v10, 0x0

    .line 575
    sget-object v7, Lcom/oneplus/tuner/providers/SoundEffectProvider;->mOpenHelper:Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 576
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    .line 577
    .local v6, "rowUri":Landroid/net/Uri;
    const-wide/16 v4, -0x1

    .line 578
    .local v4, "rowId":J
    sget-object v7, Lcom/oneplus/tuner/providers/SoundEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 579
    .local v3, "match":I
    packed-switch v3, :pswitch_data_0

    .line 627
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 628
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unknown URL"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 581
    :pswitch_0
    const-string v7, "soundEffects"

    const-string v8, "effect"

    invoke-virtual {v2, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 582
    cmp-long v7, v4, v10

    if-lez v7, :cond_0

    .line 583
    sget-object v7, Lcom/oneplus/tuner/providers/Tables$SoundEffect;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    .line 588
    :pswitch_1
    const-string v7, "downloadedSoundEffects"

    const-string v8, "downloaded_effect"

    invoke-virtual {v2, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 590
    cmp-long v7, v4, v10

    if-lez v7, :cond_0

    .line 591
    sget-object v7, Lcom/oneplus/tuner/providers/Tables$DownloadedSoundEffect;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    .line 596
    :pswitch_2
    const-string v7, "searchHistory"

    const-string v8, "history"

    invoke-virtual {v2, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 598
    cmp-long v7, v4, v10

    if-lez v7, :cond_0

    .line 599
    sget-object v7, Lcom/oneplus/tuner/providers/Tables$SearchHistory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    .line 604
    :pswitch_3
    const-string v7, "webCache"

    const-string v8, "webcache"

    invoke-virtual {v2, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 605
    cmp-long v7, v4, v10

    if-lez v7, :cond_0

    .line 606
    sget-object v7, Lcom/oneplus/tuner/providers/Tables$WebCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    .line 629
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v1, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;>;"
    new-instance v0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;

    invoke-direct {v0}, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;-><init>()V

    .line 631
    .local v0, "condition":Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;
    sget-object v7, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->INSERT:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    iput-object v7, v0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;->type:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    .line 632
    iput-wide v4, v0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;->id:J

    .line 633
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    return-object v6

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 454
    new-instance v0, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/SoundEffectProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/tuner/providers/SoundEffectProvider;->mOpenHelper:Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;

    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 683
    sget-object v2, Lcom/oneplus/tuner/providers/SoundEffectProvider;->mOpenHelper:Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 684
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 685
    .local v1, "table":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 686
    .local v10, "whereClause":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/oneplus/tuner/providers/SoundEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 687
    .local v9, "match":I
    packed-switch v9, :pswitch_data_0

    .line 729
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown or unsupported URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 689
    :pswitch_1
    const-string v2, "_id"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    :pswitch_2
    const-string v1, "soundEffects"

    .line 732
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 733
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 734
    const-string v2, " AND "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    :cond_0
    const/16 v2, 0x28

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const/16 v2, 0x29

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 741
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 743
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 744
    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/SoundEffectProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 745
    :cond_2
    return-object v8

    .line 695
    .end local v8    # "cursor":Landroid/database/Cursor;
    :pswitch_3
    const-string v2, "_id"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :pswitch_4
    const-string v1, "downloadedSoundEffects"

    .line 699
    goto :goto_0

    .line 701
    :pswitch_5
    const-string v2, "_id"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    :pswitch_6
    const-string v1, "searchHistory"

    .line 705
    goto :goto_0

    .line 707
    :pswitch_7
    const-string v2, "_id"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :pswitch_8
    const-string v1, "webCache"

    .line 711
    goto/16 :goto_0

    .line 687
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 759
    sget-object v7, Lcom/oneplus/tuner/providers/SoundEffectProvider;->mOpenHelper:Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 760
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 761
    .local v5, "table":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 762
    .local v6, "whereClause":Ljava/lang/StringBuilder;
    sget-object v7, Lcom/oneplus/tuner/providers/SoundEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 763
    .local v4, "match":I
    packed-switch v4, :pswitch_data_0

    .line 805
    :pswitch_0
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown or unsupported URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 765
    :pswitch_1
    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    :pswitch_2
    const-string v5, "soundEffects"

    .line 808
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 809
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 810
    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_0
    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 817
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, p2, v7, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 818
    .local v2, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v1, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;>;"
    new-instance v0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;

    invoke-direct {v0}, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;-><init>()V

    .line 820
    .local v0, "condition":Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;
    sget-object v7, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->UPDATE:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    iput-object v7, v0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;->type:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    .line 821
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;->where:Ljava/lang/String;

    .line 822
    iput-object p4, v0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;->whereArgs:[Ljava/lang/String;

    .line 823
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    return v2

    .line 771
    .end local v0    # "condition":Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;
    .end local v1    # "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;>;"
    .end local v2    # "count":I
    :pswitch_3
    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :pswitch_4
    const-string v5, "downloadedSoundEffects"

    .line 775
    goto :goto_0

    .line 777
    :pswitch_5
    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    :pswitch_6
    const-string v5, "searchHistory"

    .line 781
    goto :goto_0

    .line 783
    :pswitch_7
    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    :pswitch_8
    const-string v5, "webCache"

    .line 787
    goto/16 :goto_0

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
