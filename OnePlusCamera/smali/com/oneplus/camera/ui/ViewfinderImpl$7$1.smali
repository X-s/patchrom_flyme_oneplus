.class Lcom/oneplus/camera/ui/ViewfinderImpl$7$1;
.super Ljava/lang/Object;
.source "ViewfinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ViewfinderImpl$7;->onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/ViewfinderImpl$7;

.field final synthetic val$cameraActivity:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ViewfinderImpl$7;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/ViewfinderImpl$7;
    .param p2, "val$cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7$1;->this$1:Lcom/oneplus/camera/ui/ViewfinderImpl$7;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7$1;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7$1;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7$1;->this$1:Lcom/oneplus/camera/ui/ViewfinderImpl$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    sget-object v1, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-wrap0(Lcom/oneplus/camera/ui/ViewfinderImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 598
    :cond_0
    return-void
.end method
