.class final Lcom/oneplus/io/FileUtils$LockedFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/io/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LockedFileOutputStream"
.end annotation


# instance fields
.field private final m_FilePath:Ljava/lang/String;

.field private volatile m_IsClosed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lcom/oneplus/io/FileUtils$LockedFileOutputStream;->m_FilePath:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    monitor-enter p0

    .line 115
    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/io/FileUtils$LockedFileOutputStream;->m_IsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 116
    return-void

    .line 117
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/oneplus/io/FileUtils$LockedFileOutputStream;->m_IsClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 121
    :try_start_2
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    iget-object v1, p0, Lcom/oneplus/io/FileUtils$LockedFileOutputStream;->m_FilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->-wrap1(Ljava/lang/String;)V

    .line 111
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    .line 129
    iget-object v2, p0, Lcom/oneplus/io/FileUtils$LockedFileOutputStream;->m_FilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/oneplus/io/FileUtils;->-wrap1(Ljava/lang/String;)V

    .line 128
    throw v1
.end method
