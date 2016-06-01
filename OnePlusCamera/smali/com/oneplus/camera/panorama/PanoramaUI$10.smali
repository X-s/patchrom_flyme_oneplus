.class Lcom/oneplus/camera/panorama/PanoramaUI$10;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/panorama/PanoramaUI;->onInitialize()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/panorama/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$10;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 810
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$10;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    # invokes: Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z
    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->access$2400(Lcom/oneplus/camera/panorama/PanoramaUI;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 812
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$10;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    # getter for: Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->access$2500(Lcom/oneplus/camera/panorama/PanoramaUI;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 814
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$10;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    # getter for: Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->access$2500(Lcom/oneplus/camera/panorama/PanoramaUI;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 815
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 816
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$10;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    # getter for: Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->access$2600(Lcom/oneplus/camera/panorama/PanoramaUI;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$10;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    # getter for: Lcom/oneplus/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->access$2600(Lcom/oneplus/camera/panorama/PanoramaUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 819
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$10;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    # invokes: Lcom/oneplus/camera/panorama/PanoramaUI;->completeCapture()V
    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->access$1800(Lcom/oneplus/camera/panorama/PanoramaUI;)V

    .line 821
    :cond_1
    return-void
.end method
