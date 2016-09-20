.class Lcom/oneplus/camera/ui/ViewfinderImpl$2;
.super Ljava/lang/Object;
.source "ViewfinderImpl.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ViewfinderImpl;->initializeUI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ViewfinderImpl;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$2;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$2;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # invokes: Lcom/oneplus/camera/ui/ViewfinderImpl;->onDirectOutputSurfaceChanged(III)V
    invoke-static {v0, p2, p3, p4}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$300(Lcom/oneplus/camera/ui/ViewfinderImpl;III)V

    .line 327
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$2;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # invokes: Lcom/oneplus/camera/ui/ViewfinderImpl;->onDirectOutputSurfaceCreated()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$200(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    .line 321
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$2;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # invokes: Lcom/oneplus/camera/ui/ViewfinderImpl;->onDirectOutputSurfaceDestroyed()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$100(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    .line 315
    return-void
.end method
