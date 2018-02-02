.class public final Lcom/amap/api/mapcore2d/dx;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field static final b:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "US-ASCII"

    .line 28
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/dx;->a:Ljava/nio/charset/Charset;

    const-string/jumbo v0, "UTF-8"

    .line 29
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/dx;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 72
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static a(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 57
    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 65
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not a readable directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    aget-object v3, v1, v0

    .line 58
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 61
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    invoke-static {v3}, Lcom/amap/api/mapcore2d/dx;->a(Ljava/io/File;)V

    goto :goto_1

    .line 62
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
