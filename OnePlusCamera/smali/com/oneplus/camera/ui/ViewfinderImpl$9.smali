.class Lcom/oneplus/camera/ui/ViewfinderImpl$9;
.super Ljava/lang/Object;
.source "ViewfinderImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ViewfinderImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ViewfinderImpl;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
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
    const/16 v2, 0x2710

    .line 592
    sget-object v1, Lcom/oneplus/camera/ui/ViewfinderImpl$10;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 595
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # getter for: Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$600(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # getter for: Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$600(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    goto :goto_0

    .line 607
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # getter for: Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$600(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # getter for: Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$600(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    # invokes: Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$1000(Lcom/oneplus/camera/ui/ViewfinderImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 614
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 615
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl$10;->$SwitchMap$com$oneplus$camera$ui$Viewfinder$PreviewRenderingMode:[I

    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # getter for: Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;
    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$1100(Lcom/oneplus/camera/ui/ViewfinderImpl;)Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 618
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # getter for: Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z
    invoke-static {v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$1200(Lcom/oneplus/camera/ui/ViewfinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # getter for: Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceFormat:I
    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$1300(Lcom/oneplus/camera/ui/ViewfinderImpl;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # getter for: Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;
    invoke-static {v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$1400(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # getter for: Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;
    invoke-static {v3}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$1400(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    # invokes: Lcom/oneplus/camera/ui/ViewfinderImpl;->onDirectOutputSurfaceChanged(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$300(Lcom/oneplus/camera/ui/ViewfinderImpl;III)V

    goto/16 :goto_0

    .line 634
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # getter for: Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$600(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$9;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # getter for: Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$600(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 615
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method
