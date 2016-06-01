.class Lcom/oneplus/camera/ui/PreviewGallery$4;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewGallery;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/oneplus/base/BaseActivity$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/PreviewGallery;

.field final synthetic val$cameraActivity:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$4;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    iput-object p2, p0, Lcom/oneplus/camera/ui/PreviewGallery$4;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    const/4 v2, 0x0

    .line 483
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_3

    .line 484
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$4;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1100(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/io/FileManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$4;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1100(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/io/FileManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/camera/io/FileManager;->scanFiles()V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$4;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1200(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/ui/CameraPager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$4;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1200(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/ui/CameraPager;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/oneplus/camera/ui/CameraPager;->setCurrentItem(IZ)V

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$4;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1300(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/ui/CameraPager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 491
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$4;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1300(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/ui/CameraPager;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/oneplus/camera/ui/CameraPager;->setCurrentItem(IZ)V

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$4;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$4;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    .line 497
    :cond_3
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_4

    .line 499
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$4;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/ui/PreviewGallery;->hideUndoDeletionBar(Z)V

    .line 501
    :cond_4
    return-void
.end method
