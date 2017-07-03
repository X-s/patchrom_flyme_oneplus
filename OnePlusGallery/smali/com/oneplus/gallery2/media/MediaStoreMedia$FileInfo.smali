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
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 204
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "file":Ljava/io/File;
    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    invoke-direct {v2}, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;-><init>()V

    .line 206
    .local v2, "info":Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->lastModifiedTime:J

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->size:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "info":Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;
    :goto_0
    return-object v2

    .line 210
    :catch_0
    move-exception v0

    .line 212
    .local v0, "ex":Ljava/lang/Throwable;
    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read() - Fail to read file info of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    const/4 v2, 0x0

    goto :goto_0
.end method
