.class public Lcom/google/tagmanager/ExperimentMacroHelper;
.super Ljava/lang/Object;
.source "ExperimentMacroHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearKeys(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .locals 4

    .prologue
    .line 34
    iget-object v1, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 37
    return-void

    .line 34
    :cond_0
    aget-object v3, v1, v0

    .line 35
    invoke-static {v3}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/tagmanager/DataLayer;->clearPersistentKeysWithPrefix(Ljava/lang/String;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static handleExperimentSupplemental(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->clearKeys(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    .line 29
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->pushValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    .line 30
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->setRandomValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    .line 31
    return-void

    :cond_0
    const-string/jumbo v0, "supplemental missing experimentSupplemental"

    .line 25
    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private static pushValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .locals 4

    .prologue
    .line 40
    iget-object v1, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 46
    return-void

    .line 40
    :cond_0
    aget-object v3, v1, v0

    .line 41
    invoke-static {v3}, Lcom/google/tagmanager/ExperimentMacroHelper;->valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v3

    .line 42
    if-nez v3, :cond_1

    .line 40
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_1
.end method

.method private static setRandomValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .locals 14

    .prologue
    .line 50
    iget-object v4, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 110
    return-void

    .line 50
    :cond_0
    aget-object v6, v4, v3

    .line 51
    iget-object v0, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    instance-of v0, v1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 63
    check-cast v0, Ljava/lang/Number;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 69
    :goto_1
    iget-wide v8, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    .line 70
    iget-wide v10, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    .line 71
    iget-boolean v2, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-nez v2, :cond_6

    .line 73
    :cond_1
    :goto_2
    cmp-long v0, v8, v10

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_a

    .line 74
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sub-long/2addr v10, v8

    long-to-double v10, v10

    mul-double/2addr v0, v10

    long-to-double v8, v8

    add-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 82
    :cond_2
    iget-object v0, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/DataLayer;->clearPersistentKeysWithPrefix(Ljava/lang/String;)V

    .line 85
    iget-object v0, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/tagmanager/DataLayer;->expandKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 87
    iget-wide v8, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-gtz v0, :cond_b

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_3

    const-string/jumbo v0, "gtm"

    .line 88
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "gtm"

    .line 91
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    instance-of v2, v0, Ljava/util/Map;

    if-nez v2, :cond_d

    const-string/jumbo v0, "GaExperimentRandom: gtm not a map"

    .line 102
    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 108
    :cond_3
    :goto_5
    invoke-virtual {p0, v1}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 50
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "GaExperimentRandom: No key"

    .line 52
    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 60
    goto :goto_1

    .line 71
    :cond_6
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v2, v12, v8

    if-gez v2, :cond_7

    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v0, v12, v10

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_2

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    .line 73
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    const-string/jumbo v0, "GaExperimentRandom: random range invalid"

    .line 76
    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_6

    .line 87
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    :cond_c
    const-string/jumbo v0, "gtm"

    const/4 v2, 0x2

    .line 89
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "lifetime"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget-wide v8, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v7

    invoke-static {v2}, Lcom/google/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 94
    :cond_d
    check-cast v0, Ljava/util/Map;

    const-string/jumbo v2, "lifetime"

    .line 100
    iget-wide v6, v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method private static valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 119
    check-cast v0, Ljava/util/Map;

    .line 120
    return-object v0

    .line 115
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is not a map value, ignored."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 116
    return-object v0
.end method
