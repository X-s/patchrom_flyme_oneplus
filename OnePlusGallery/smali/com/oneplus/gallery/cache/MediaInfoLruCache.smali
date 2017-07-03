.class public Lcom/oneplus/gallery/cache/MediaInfoLruCache;
.super Lcom/oneplus/cache/DiskLruCache;
.source "MediaInfoLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/cache/DiskLruCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final KEY_ORIENTATION:Ljava/lang/String; = "key_orientation"

.field private static final PRINT_LOGS:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/oneplus/gallery/cache/MediaInfoLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/cache/MediaInfoLruCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "capacity"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/cache/DiskLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 27
    return-void
.end method


# virtual methods
.method protected bridge synthetic readFromFile(Ljava/io/Serializable;Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/io/Serializable;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/io/Serializable;
    check-cast p3, Ljava/util/HashMap;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/cache/MediaInfoLruCache;->readFromFile(Ljava/lang/String;Ljava/io/File;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected readFromFile(Ljava/lang/String;Ljava/io/File;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    .local p3, "defaultValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 34
    :cond_0
    sget-object v7, Lcom/oneplus/gallery/cache/MediaInfoLruCache;->TAG:Ljava/lang/String;

    const-string v8, "readFromFile() - illegal params"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p3

    .line 89
    :goto_0
    return-object v1

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 43
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v4, Landroid/util/JsonReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 44
    .local v4, "reader":Landroid/util/JsonReader;
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 46
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_1
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    .line 48
    const/4 v3, 0x0

    .line 49
    .local v3, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 50
    :goto_1
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 52
    invoke-virtual {v4}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v5

    .line 53
    .local v5, "token":Landroid/util/JsonToken;
    sget-object v7, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v5, v7, :cond_2

    .line 57
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 58
    .local v6, "value":Ljava/lang/Long;
    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 85
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "token":Landroid/util/JsonToken;
    .end local v6    # "value":Ljava/lang/Long;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 87
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "reader":Landroid/util/JsonReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2
    sget-object v7, Lcom/oneplus/gallery/cache/MediaInfoLruCache;->TAG:Ljava/lang/String;

    const-string v8, "readFromFile() - e:"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "reader":Landroid/util/JsonReader;
    .restart local v5    # "token":Landroid/util/JsonToken;
    :cond_2
    :try_start_2
    sget-object v7, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v5, v7, :cond_3

    .line 62
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 65
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    sget-object v7, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    if-ne v5, v7, :cond_4

    .line 67
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 68
    .local v6, "value":Ljava/lang/Boolean;
    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 70
    .end local v6    # "value":Ljava/lang/Boolean;
    :cond_4
    sget-object v7, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    if-ne v5, v7, :cond_5

    .line 72
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 76
    :cond_5
    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 79
    .end local v5    # "token":Landroid/util/JsonToken;
    :cond_6
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 83
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "name":Ljava/lang/String;
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    :try_start_3
    invoke-virtual {v4}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 85
    .end local v4    # "reader":Landroid/util/JsonReader;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic writeToFile(Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/File;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/Serializable;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/io/Serializable;
    check-cast p2, Ljava/util/HashMap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/cache/MediaInfoLruCache;->writeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/io/File;)V

    return-void
.end method

.method protected writeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/io/File;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 100
    .local v2, "fw":Ljava/io/FileWriter;
    new-instance v5, Landroid/util/JsonWriter;

    invoke-direct {v5, v2}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 101
    .local v5, "writer":Landroid/util/JsonWriter;
    const-string v6, "  "

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v5}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 103
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 105
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 106
    .local v4, "obj":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/Long;

    if-nez v6, :cond_0

    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 108
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    check-cast v4, Ljava/lang/Number;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v6, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "fw":Ljava/io/FileWriter;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "writer":Landroid/util/JsonWriter;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/oneplus/gallery/cache/MediaInfoLruCache;->TAG:Ljava/lang/String;

    const-string v7, "writeToFile() - e:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 110
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "obj":Ljava/lang/Object;
    .restart local v5    # "writer":Landroid/util/JsonWriter;
    :cond_1
    :try_start_1
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    check-cast v4, Ljava/lang/String;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v6, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    .line 114
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    goto :goto_0

    .line 120
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_3
    sget-object v6, Lcom/oneplus/gallery/cache/MediaInfoLruCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeToFile() - not support type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v5}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 124
    invoke-virtual {v5}, Landroid/util/JsonWriter;->close()V

    .line 125
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
