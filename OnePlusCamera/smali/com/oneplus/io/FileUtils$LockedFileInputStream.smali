.class final Lcom/oneplus/io/FileUtils$LockedFileInputStream;
.super Ljava/io/FileInputStream;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/io/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LockedFileInputStream"
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
    .line 65
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/oneplus/io/FileUtils$LockedFileInputStream;->m_FilePath:Ljava/lang/String;

    .line 63
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
    .line 73
    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/io/FileUtils$LockedFileInputStream;->m_IsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 76
    return-void

    .line 77
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/oneplus/io/FileUtils$LockedFileInputStream;->m_IsClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 81
    :try_start_2
    invoke-super {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    iget-object v1, p0, Lcom/oneplus/io/FileUtils$LockedFileInputStream;->m_FilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->-wrap0(Ljava/lang/String;)V

    .line 71
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    .line 89
    iget-object v2, p0, Lcom/oneplus/io/FileUtils$LockedFileInputStream;->m_FilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/oneplus/io/FileUtils;->-wrap0(Ljava/lang/String;)V

    .line 88
    throw v1
.end method
