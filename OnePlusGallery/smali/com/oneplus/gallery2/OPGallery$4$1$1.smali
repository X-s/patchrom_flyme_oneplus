.class Lcom/oneplus/gallery2/OPGallery$4$1$1;
.super Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGallery$4$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oneplus/gallery2/OPGallery$4$1;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery$4$1;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$4$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$4$1;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumCreationCompleted(JZ[Lcom/oneplus/gallery2/media/AlbumMediaSet;I)V
    .locals 7
    .param p1, "albumId"    # J
    .param p3, "success"    # Z
    .param p4, "mediaSets"    # [Lcom/oneplus/gallery2/media/AlbumMediaSet;
    .param p5, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 509
    if-eqz p3, :cond_2

    .line 511
    array-length v1, p4

    if-lez v1, :cond_1

    .line 513
    aget-object v0, p4, v6

    .line 514
    .local v0, "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$4$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$4$1;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$4$1;->this$1:Lcom/oneplus/gallery2/OPGallery$4;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$4;->this$0:Lcom/oneplus/gallery2/OPGallery;

    # getter for: Lcom/oneplus/gallery2/OPGallery;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;
    invoke-static {v1}, Lcom/oneplus/gallery2/OPGallery;->access$600(Lcom/oneplus/gallery2/OPGallery;)Lcom/oneplus/gallery2/AppTracker;

    move-result-object v1

    if-nez v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$4$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$4$1;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$4$1;->this$1:Lcom/oneplus/gallery2/OPGallery$4;

    iget-object v2, v1, Lcom/oneplus/gallery2/OPGallery$4;->this$0:Lcom/oneplus/gallery2/OPGallery;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    const-class v3, Lcom/oneplus/gallery2/AppTracker;

    invoke-virtual {v1, v3}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/AppTracker;

    # setter for: Lcom/oneplus/gallery2/OPGallery;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;
    invoke-static {v2, v1}, Lcom/oneplus/gallery2/OPGallery;->access$602(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/AppTracker;)Lcom/oneplus/gallery2/AppTracker;

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$4$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$4$1;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$4$1;->this$1:Lcom/oneplus/gallery2/OPGallery$4;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$4;->this$0:Lcom/oneplus/gallery2/OPGallery;

    # getter for: Lcom/oneplus/gallery2/OPGallery;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;
    invoke-static {v1}, Lcom/oneplus/gallery2/OPGallery;->access$600(Lcom/oneplus/gallery2/OPGallery;)Lcom/oneplus/gallery2/AppTracker;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$4$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$4$1;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$4$1;->this$1:Lcom/oneplus/gallery2/OPGallery$4;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$4;->this$0:Lcom/oneplus/gallery2/OPGallery;

    # getter for: Lcom/oneplus/gallery2/OPGallery;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;
    invoke-static {v1}, Lcom/oneplus/gallery2/OPGallery;->access$600(Lcom/oneplus/gallery2/OPGallery;)Lcom/oneplus/gallery2/AppTracker;

    move-result-object v1

    const-string v2, "Gallery.CreateMediaSet"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->getType()Lcom/oneplus/gallery2/media/MediaSet$Type;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    sget-object v5, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v5}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v6, v3}, Lcom/oneplus/gallery2/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 519
    .end local v0    # "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$4$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$4$1;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$4$1;->this$1:Lcom/oneplus/gallery2/OPGallery$4;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$4;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-virtual {v1, p4}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCompleted(Ljava/lang/Object;)V

    .line 526
    :goto_0
    return-void

    .line 523
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$4$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$4$1;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$4$1;->this$1:Lcom/oneplus/gallery2/OPGallery$4;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$4;->this$0:Lcom/oneplus/gallery2/OPGallery;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v2, "createAlbum() - Fail to create album"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$4$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$4$1;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$4$1;->this$1:Lcom/oneplus/gallery2/OPGallery$4;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$4;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCanceled(Ljava/lang/Object;)V

    goto :goto_0
.end method
