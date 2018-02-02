.class Lcom/oneplus/camera/ui/PreviewGallery$8;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewGallery;->initPager(Lcom/oneplus/camera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/oneplus/camera/io/FileManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/PreviewGallery;

.field final synthetic val$cameraActivity:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p2, "val$cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 675
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    iput-object p2, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 678
    check-cast p1, Lcom/oneplus/camera/io/FileManager;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery$8;->onComponentFound(Lcom/oneplus/camera/io/FileManager;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/io/FileManager;)V
    .locals 4
    .param p1, "component"    # Lcom/oneplus/camera/io/FileManager;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 679
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->-get0(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onComponentFound"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v0, p1}, Lcom/oneplus/camera/ui/PreviewGallery;->-set1(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/io/FileManager;)Lcom/oneplus/camera/io/FileManager;

    .line 682
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->-wrap8(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/CameraActivity;)V

    .line 683
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->-wrap7(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/CameraActivity;)V

    .line 684
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v1}, Lcom/oneplus/camera/ui/PreviewGallery;->-wrap0(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v1}, Lcom/oneplus/camera/ui/PreviewGallery;->-wrap0(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->-get14(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/ui/CameraPager;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/oneplus/camera/ui/CameraPager;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->-get15(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/ui/CameraPager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/oneplus/camera/ui/CameraPager;->setVisibility(I)V

    .line 692
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->-get3(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/io/FileManager;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/PreviewGallery$8$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/PreviewGallery$8$1;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$8;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 678
    return-void

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->-get15(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/ui/CameraPager;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/oneplus/camera/ui/CameraPager;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$8;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->-get14(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/ui/CameraPager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/oneplus/camera/ui/CameraPager;->setVisibility(I)V

    goto :goto_0
.end method
