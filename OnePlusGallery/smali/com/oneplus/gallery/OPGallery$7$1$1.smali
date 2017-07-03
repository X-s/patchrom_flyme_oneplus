.class Lcom/oneplus/gallery/OPGallery$7$1$1;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Lcom/oneplus/base/OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery$7$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/OperationCallback",
        "<",
        "Ljava/lang/Object;",
        "Lcom/oneplus/gallery/media/MediaSet;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oneplus/gallery/OPGallery$7$1;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery$7$1;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$7$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$7$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$7$1;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7$1;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCanceled(Ljava/lang/Object;)V

    .line 559
    return-void
.end method

.method public onCompleted(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 6
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    const/4 v5, 0x0

    .line 564
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$7$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$7$1;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7$1;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7;->this$0:Lcom/oneplus/gallery/OPGallery;

    # getter for: Lcom/oneplus/gallery/OPGallery;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGallery;->access$600(Lcom/oneplus/gallery/OPGallery;)Lcom/oneplus/gallery/AppTracker;

    move-result-object v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$7$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$7$1;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7$1;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v1, v0, Lcom/oneplus/gallery/OPGallery$7;->this$0:Lcom/oneplus/gallery/OPGallery;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v2, Lcom/oneplus/gallery/AppTracker;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/AppTracker;

    # setter for: Lcom/oneplus/gallery/OPGallery;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;
    invoke-static {v1, v0}, Lcom/oneplus/gallery/OPGallery;->access$602(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/AppTracker;)Lcom/oneplus/gallery/AppTracker;

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$7$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$7$1;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7$1;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7;->this$0:Lcom/oneplus/gallery/OPGallery;

    # getter for: Lcom/oneplus/gallery/OPGallery;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGallery;->access$600(Lcom/oneplus/gallery/OPGallery;)Lcom/oneplus/gallery/AppTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$7$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$7$1;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7$1;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7;->this$0:Lcom/oneplus/gallery/OPGallery;

    # getter for: Lcom/oneplus/gallery/OPGallery;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGallery;->access$600(Lcom/oneplus/gallery/OPGallery;)Lcom/oneplus/gallery/AppTracker;

    move-result-object v0

    const-string v1, "Gallery.CreateMediaSet"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    sget-object v4, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v5, v2}, Lcom/oneplus/gallery/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$7$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$7$1;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7$1;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCompleted(Ljava/lang/Object;)V

    .line 569
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 554
    check-cast p1, Lcom/oneplus/gallery/media/MediaSet;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/OPGallery$7$1$1;->onCompleted(Lcom/oneplus/gallery/media/MediaSet;)V

    return-void
.end method

.method public onStarted(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$7$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$7$1;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7$1;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/OperationCallbackHelper;->callOnStarted(Ljava/lang/Object;)V

    .line 575
    return-void
.end method
