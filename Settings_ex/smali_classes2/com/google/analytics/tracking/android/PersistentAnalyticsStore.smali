.class Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;
.super Ljava/lang/Object;
.source "PersistentAnalyticsStore.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/AnalyticsStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
    }
.end annotation


# static fields
.field private static final CREATE_HITS_TABLE:Ljava/lang/String;

.field private static final DATABASE_FILENAME:Ljava/lang/String; = "google_analytics_v2.db"

.field static final HITS_TABLE:Ljava/lang/String; = "hits2"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_APP_ID:Ljava/lang/String; = "hit_app_id"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_ID:Ljava/lang/String; = "hit_id"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_STRING:Ljava/lang/String; = "hit_string"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_TIME:Ljava/lang/String; = "hit_time"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_URL:Ljava/lang/String; = "hit_url"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mClock:Lcom/google/analytics/tracking/android/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseName:Ljava/lang/String;

.field private final mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

.field private volatile mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

.field private mLastDeleteStaleHitsTime:J

.field private final mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    const/4 v1, 0x6

    .line 60
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "hits2"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "hit_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "hit_time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "hit_url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "hit_string"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "hit_app_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "google_analytics_v2.db"

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;-><init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    .line 110
    iput-object p3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDatabaseName:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    .line 112
    new-instance v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$1;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$1;-><init>(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    .line 118
    new-instance v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDatabaseName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;-><init>(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    .line 119
    new-instance v0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Lcom/google/analytics/tracking/android/Clock;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method private fillVersionParameter(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "&_v"

    const/4 v1, 0x1

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    if-nez p2, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/Command;

    const-string/jumbo v3, "appendVersion"

    .line 191
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/Command;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/Command;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static generateHitString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
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
    .line 254
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "&"

    .line 261
    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/HitBuilder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/HitBuilder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 570
    return-object v0

    .line 569
    :catch_0
    move-exception v0

    .line 567
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 568
    return-object v1
.end method

.method private removeOldHitIfFull()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    add-int/lit8 v0, v0, 0x1

    .line 205
    if-gtz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->peekHitIds(I)Ljava/util/List;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Store full, deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " hits to make room."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 208
    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteHits([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeHitToDatabase(Ljava/util/Map;JLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "Error opening database for putHit"

    .line 214
    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 215
    if-eqz v4, :cond_0

    .line 219
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "hit_string"

    .line 221
    invoke-static {p1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->generateHitString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "hit_time"

    .line 222
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v2, 0x0

    const-string/jumbo v0, "AppUID"

    .line 224
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-wide v0, v2

    :goto_0
    const-string/jumbo v2, "hit_app_id"

    .line 231
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    if-eqz p4, :cond_2

    .line 236
    :goto_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "hit_url"

    .line 242
    invoke-virtual {v5, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "hits2"

    const/4 v1, 0x0

    .line 244
    invoke-virtual {v4, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 247
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    :goto_2
    return-void

    .line 216
    :cond_0
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "AppUID"

    .line 226
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0

    :cond_2
    const-string/jumbo p4, "http://www.google-analytics.com/collect"

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "Empty path: not sending hit"

    .line 239
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 240
    return-void

    .line 250
    :catch_1
    move-exception v0

    const-string/jumbo v0, "Error storing hit"

    .line 249
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public clearHits(J)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    const-string/jumbo v2, "Error opening database for clearHits"

    .line 149
    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 150
    if-nez v2, :cond_0

    .line 160
    :goto_0
    return-void

    :cond_0
    const-wide/16 v4, 0x0

    .line 151
    cmp-long v3, p1, v4

    if-nez v3, :cond_1

    const-string/jumbo v3, "hits2"

    .line 152
    invoke-virtual {v2, v3, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-interface {v2, v0}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V

    goto :goto_0

    .line 154
    :cond_1
    new-array v3, v1, [Ljava/lang/String;

    .line 155
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string/jumbo v4, "hits2"

    const-string/jumbo v5, "hit_app_id = ?"

    .line 156
    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 158
    goto :goto_2
.end method

.method public close()V
    .locals 1

    .prologue
    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 543
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/Dispatcher;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    return-void

    .line 547
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Error opening database for close"

    .line 545
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method deleteHits(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 446
    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v0, "Empty/Null collection passed to deleteHits."

    .line 447
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 448
    return-void

    .line 446
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 452
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 455
    invoke-virtual {p0, v3}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteHits([Ljava/lang/String;)V

    .line 456
    return-void

    .line 452
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/Hit;

    .line 453
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Hit;->getHitId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    .line 454
    goto :goto_0
.end method

.method deleteHits([Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 464
    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v0, "Empty hitIds passed to deleteHits."

    .line 465
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 466
    return-void

    .line 464
    :cond_1
    array-length v2, p1

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Error opening database for deleteHits."

    .line 468
    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 469
    if-eqz v2, :cond_2

    const-string/jumbo v3, "HIT_ID in (%s)"

    .line 472
    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, ","

    array-length v6, p1

    const-string/jumbo v7, "?"

    invoke-static {v6, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string/jumbo v4, "hits2"

    .line 475
    invoke-virtual {v2, v4, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 476
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    invoke-interface {v2, v0}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_1
    return-void

    .line 470
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 476
    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error deleting hits "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method deleteStaleHits()I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 422
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 425
    iget-wide v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v2, v6

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 426
    return v0

    :cond_0
    move v2, v0

    .line 425
    goto :goto_0

    .line 428
    :cond_1
    iput-wide v4, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    const-string/jumbo v2, "Error opening database for deleteStaleHits."

    .line 429
    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 430
    if-eqz v2, :cond_2

    .line 433
    iget-object v3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v3}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v4

    const-wide v6, 0x9a7ec800L

    sub-long/2addr v4, v6

    const-string/jumbo v3, "hits2"

    const-string/jumbo v6, "HIT_TIME < ?"

    .line 434
    new-array v7, v1, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v0

    invoke-virtual {v2, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 435
    iget-object v3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-interface {v3, v0}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V

    .line 436
    return v2

    .line 431
    :cond_2
    return v0

    :cond_3
    move v0, v1

    .line 435
    goto :goto_1
.end method

.method public dispatch()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v0, "Dispatch running..."

    .line 507
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/Dispatcher;->okToDispatch()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    .line 513
    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->peekHits(I)Ljava/util/List;

    move-result-object v0

    .line 514
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 519
    iget-object v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    invoke-interface {v1, v0}, Lcom/google/analytics/tracking/android/Dispatcher;->dispatchHits(Ljava/util/List;)I

    move-result v1

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " hits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 525
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteHits(Ljava/util/Collection;)V

    .line 529
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "...nothing to dispatch"

    .line 515
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V

    .line 517
    return-void

    .line 529
    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v0

    if-lez v0, :cond_0

    .line 530
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchLocalHits()V

    goto :goto_0
.end method

.method public getDbHelper()Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    return-object v0
.end method

.method public getDispatcher()Lcom/google/analytics/tracking/android/Dispatcher;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    return-object v0
.end method

.method getHelper()Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    return-object v0
.end method

.method getNumStoredHits()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string/jumbo v2, "Error opening database for getNumStoredHits."

    .line 484
    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 485
    if-eqz v2, :cond_1

    :try_start_0
    const-string/jumbo v3, "SELECT COUNT(*) from hits2"

    const/4 v4, 0x0

    .line 490
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 491
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 497
    :goto_0
    if-nez v0, :cond_3

    :cond_0
    move v0, v1

    .line 501
    :goto_1
    return v0

    .line 486
    :cond_1
    return v1

    :cond_2
    const/4 v2, 0x0

    .line 492
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 498
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v2, "Error getting numStoredHits"

    .line 495
    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 497
    if-eqz v0, :cond_0

    .line 498
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 497
    :goto_3
    if-nez v1, :cond_4

    .line 498
    :goto_4
    throw v0

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3
.end method

.method peekHitIds(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 272
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 273
    if-lez p1, :cond_2

    const-string/jumbo v0, "Error opening database for peekHitIds."

    .line 277
    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_3

    :try_start_0
    const-string/jumbo v1, "hits2"

    const/4 v2, 0x1

    .line 284
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "hit_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "%s ASC"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "hit_id"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 292
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    .line 300
    :cond_0
    if-nez v1, :cond_5

    .line 304
    :cond_1
    :goto_0
    return-object v10

    :cond_2
    const-string/jumbo v0, "Invalid maxHits specified. Skipping"

    .line 274
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 275
    return-object v10

    .line 279
    :cond_3
    return-object v10

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 294
    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 301
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v9

    .line 298
    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in peekHits fetching hitIds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 300
    if-eqz v1, :cond_1

    .line 301
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

    .line 300
    :goto_3
    if-nez v1, :cond_6

    .line 301
    :goto_4
    throw v0

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public peekHits(I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v11, 0x0

    .line 315
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "Error opening database for peekHits"

    .line 316
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 317
    if-eqz v2, :cond_2

    :try_start_0
    const-string/jumbo v3, "hits2"

    const/4 v4, 0x2

    .line 329
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "hit_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "hit_time"

    aput-object v6, v4, v5

    const-string/jumbo v5, "%s ASC"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "hit_id"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 338
    :try_start_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 349
    :cond_0
    if-nez v11, :cond_4

    :goto_0
    :try_start_3
    const-string/jumbo v3, "hits2"

    const/4 v4, 0x3

    .line 356
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "hit_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "hit_string"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "hit_url"

    aput-object v6, v4, v5

    const-string/jumbo v5, "%s ASC"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "hit_id"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    .line 365
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    if-nez v2, :cond_e

    .line 406
    :cond_1
    if-nez v3, :cond_9

    .line 407
    :goto_1
    return-object v12

    .line 318
    :cond_2
    return-object v13

    .line 341
    :cond_3
    :goto_2
    :try_start_5
    new-instance v4, Lcom/google/analytics/tracking/android/Hit;

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v5, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/google/analytics/tracking/android/Hit;-><init>(Ljava/lang/String;JJ)V

    .line 342
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 350
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v11

    move-object v4, v13

    .line 346
    :goto_3
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in peekHits fetching hitIds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 349
    if-nez v3, :cond_5

    .line 350
    :goto_4
    return-object v4

    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v2

    .line 349
    :goto_5
    if-nez v11, :cond_6

    .line 350
    :goto_6
    throw v2

    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 372
    :cond_7
    :try_start_7
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/tracking/android/Hit;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/analytics/tracking/android/Hit;->setHitString(Ljava/lang/String;)V

    .line 373
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/tracking/android/Hit;

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/analytics/tracking/android/Hit;->setHitUrl(Ljava/lang/String;)V

    .line 378
    :goto_7
    add-int/lit8 v2, v4, 0x1

    .line 379
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    .line 367
    :goto_8
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    .line 371
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    if-gtz v2, :cond_7

    const-string/jumbo v5, "HitString for hitId %d too large.  Hit will be deleted."

    const/4 v2, 0x1

    .line 375
    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/tracking/android/Hit;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/Hit;->getHitId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    .line 407
    :catch_1
    move-exception v2

    .line 383
    :goto_9
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in peekHits fetching hitString: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 392
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v15

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v2

    if-nez v2, :cond_a

    .line 406
    :cond_8
    if-nez v3, :cond_c

    .line 407
    :goto_b
    return-object v5

    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 394
    :cond_a
    :try_start_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/tracking/android/Hit;

    .line 395
    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 402
    :goto_c
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_a

    .line 407
    :catchall_1
    move-exception v2

    .line 406
    :goto_d
    if-nez v3, :cond_d

    .line 407
    :goto_e
    throw v2

    .line 396
    :cond_b
    if-nez v4, :cond_8

    move v4, v14

    .line 399
    goto :goto_c

    .line 407
    :cond_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :cond_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_e

    :catchall_2
    move-exception v2

    move-object v3, v11

    goto :goto_d

    :catch_2
    move-exception v2

    move-object v3, v11

    goto :goto_9

    .line 350
    :catchall_3
    move-exception v2

    move-object v11, v3

    goto/16 :goto_5

    :catch_3
    move-exception v2

    move-object v3, v11

    move-object v4, v13

    goto/16 :goto_3

    :catch_4
    move-exception v2

    move-object v3, v11

    move-object v4, v12

    goto/16 :goto_3

    :cond_e
    move v4, v15

    goto/16 :goto_8
.end method

.method public putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteStaleHits()I

    .line 179
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->removeOldHitIfFull()V

    .line 180
    invoke-direct {p0, p1, p5}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->fillVersionParameter(Ljava/util/Map;Ljava/util/Collection;)V

    .line 181
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->writeHitToDatabase(Ljava/util/Map;JLjava/lang/String;)V

    .line 182
    return-void
.end method

.method public setClock(Lcom/google/analytics/tracking/android/Clock;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    .line 128
    return-void
.end method

.method public setDispatch(Z)V
    .locals 3

    .prologue
    .line 137
    if-nez p1, :cond_0

    new-instance v0, Lcom/google/analytics/tracking/android/NoopDispatcher;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/NoopDispatcher;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    .line 140
    return-void

    .line 137
    :cond_0
    new-instance v0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V

    goto :goto_0
.end method

.method setDispatcher(Lcom/google/analytics/tracking/android/Dispatcher;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    .line 145
    return-void
.end method

.method setLastDeleteStaleHitsTime(J)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 414
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    .line 415
    return-void
.end method
