.class Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;
.super Landroid/os/HandlerThread;
.source "FileManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/io/FileManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileManageerThread"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private m_Handler:Landroid/os/Handler;

.field private m_Handling:Z

.field final synthetic this$0:Lcom/oneplus/camera/io/FileManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/io/FileManagerImpl;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    .line 410
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 405
    const-class v0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->TAG:Ljava/lang/String;

    .line 411
    return-void
.end method

.method static synthetic access$502(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;
    .param p1, "x1"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->m_Handling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public hasMessage()Z
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandling()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->m_Handling:Z

    return v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 428
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 429
    invoke-virtual {p0}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 431
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;-><init>(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->m_Handler:Landroid/os/Handler;

    .line 567
    return-void
.end method
