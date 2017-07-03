.class public Lcom/oneplus/io/StorageImpl;
.super Ljava/lang/Object;
.source "StorageImpl.java"

# interfaces
.implements Lcom/oneplus/io/Storage;


# instance fields
.field private m_DirectoryPath:Ljava/lang/String;

.field private m_type:Lcom/oneplus/io/Storage$Type;


# direct methods
.method public constructor <init>(Lcom/oneplus/io/Storage$Type;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/oneplus/io/Storage$Type;
    .param p2, "directoryPath"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/oneplus/io/StorageImpl;->m_type:Lcom/oneplus/io/Storage$Type;

    .line 14
    iput-object p2, p0, Lcom/oneplus/io/StorageImpl;->m_DirectoryPath:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oneplus/io/StorageImpl;->m_DirectoryPath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/oneplus/io/Storage$Type;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oneplus/io/StorageImpl;->m_type:Lcom/oneplus/io/Storage$Type;

    return-object v0
.end method

.method public isReady()Z
    .locals 3

    .prologue
    .line 32
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/oneplus/io/StorageImpl;->m_DirectoryPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const/4 v1, 0x1

    .line 35
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
