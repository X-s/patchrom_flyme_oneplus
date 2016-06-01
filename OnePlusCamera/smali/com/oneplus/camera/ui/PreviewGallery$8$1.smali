.class Lcom/oneplus/camera/ui/PreviewGallery$8$1;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewGallery$8;->onComponentFound(Lcom/oneplus/camera/io/FileManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/PreviewGallery$8;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery$8;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$8$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 700
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$2300(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "run()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1100(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/io/FileManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILES_RESET:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/PreviewGallery$8$1$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/PreviewGallery$8$1$1;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$8$1;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 710
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1100(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/io/FileManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/PreviewGallery$8$1$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/PreviewGallery$8$1$2;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$8$1;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 720
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1100(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/io/FileManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILE_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/PreviewGallery$8$1$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/PreviewGallery$8$1$3;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$8$1;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 735
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1100(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/io/FileManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILE_DELETED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/PreviewGallery$8$1$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/PreviewGallery$8$1$4;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$8$1;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 744
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1100(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/io/FileManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/PreviewGallery$8$1$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/PreviewGallery$8$1$5;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$8$1;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 756
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    .line 757
    return-void
.end method
