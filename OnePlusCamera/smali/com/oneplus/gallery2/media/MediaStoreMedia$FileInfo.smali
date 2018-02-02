.class public Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;
.super Ljava/lang/Object;
.source "MediaStoreMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInfo"
.end annotation


# instance fields
.field public volatile lastModifiedTime:J

.field public volatile size:J

.field public volatile takenTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;
    .locals 4

    .prologue
    .line 204
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    invoke-direct {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;-><init>()V

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->lastModifiedTime:J

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->size:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    return-object v1

    :catch_0
    move-exception v0

    .line 212
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->access$2()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "read() - Fail to read file info of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 213
    return-object v0
.end method
