.class Lcom/oneplus/camera/media/ResolutionManagerImpl$1;
.super Ljava/lang/Object;
.source "ResolutionManagerImpl.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/media/ResolutionManagerImpl;->onInitialize()V
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
        "Lcom/oneplus/camera/ui/Viewfinder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/media/ResolutionManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/media/ResolutionManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/media/ResolutionManagerImpl;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl$1;->this$0:Lcom/oneplus/camera/media/ResolutionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 131
    check-cast p1, Lcom/oneplus/camera/ui/Viewfinder;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/ResolutionManagerImpl$1;->onComponentFound(Lcom/oneplus/camera/ui/Viewfinder;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/Viewfinder;)V
    .locals 3
    .param p1, "component"    # Lcom/oneplus/camera/ui/Viewfinder;

    .prologue
    const/4 v2, 0x1

    .line 133
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl$1;->this$0:Lcom/oneplus/camera/media/ResolutionManagerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->-set0(Lcom/oneplus/camera/media/ResolutionManagerImpl;Lcom/oneplus/camera/ui/Viewfinder;)Lcom/oneplus/camera/ui/Viewfinder;

    .line 134
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl$1;->this$0:Lcom/oneplus/camera/media/ResolutionManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl$1;->this$0:Lcom/oneplus/camera/media/ResolutionManagerImpl;

    invoke-static {v0, v2, v2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->-wrap0(Lcom/oneplus/camera/media/ResolutionManagerImpl;ZZ)Z

    .line 131
    :cond_0
    return-void
.end method
