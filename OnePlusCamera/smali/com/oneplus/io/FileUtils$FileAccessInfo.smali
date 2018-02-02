.class final Lcom/oneplus/io/FileUtils$FileAccessInfo;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/io/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileAccessInfo"
.end annotation


# instance fields
.field public volatile isWriting:Z

.field public final lock:Ljava/nio/channels/FileLock;

.field public final lockFile:Ljava/io/File;

.field public final openedLockFile:Ljava/io/RandomAccessFile;

.field public volatile readerCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;)V
    .locals 0
    .param p1, "lockFile"    # Ljava/io/File;
    .param p2, "openedLockFile"    # Ljava/io/RandomAccessFile;
    .param p3, "lock"    # Ljava/nio/channels/FileLock;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/oneplus/io/FileUtils$FileAccessInfo;->lockFile:Ljava/io/File;

    .line 49
    iput-object p2, p0, Lcom/oneplus/io/FileUtils$FileAccessInfo;->openedLockFile:Ljava/io/RandomAccessFile;

    .line 50
    iput-object p3, p0, Lcom/oneplus/io/FileUtils$FileAccessInfo;->lock:Ljava/nio/channels/FileLock;

    .line 46
    return-void
.end method
