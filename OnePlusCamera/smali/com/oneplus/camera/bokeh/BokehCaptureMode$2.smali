.class Lcom/oneplus/camera/bokeh/BokehCaptureMode$2;
.super Ljava/lang/Object;
.source "BokehCaptureMode.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/bokeh/BokehCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/camera/IntentEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/bokeh/BokehCaptureMode;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/bokeh/BokehCaptureMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oneplus/camera/bokeh/BokehCaptureMode$2;->this$0:Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 78
    check-cast p3, Lcom/oneplus/camera/IntentEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/bokeh/BokehCaptureMode$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/IntentEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/IntentEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/IntentEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/IntentEventArgs;",
            ">;",
            "Lcom/oneplus/camera/IntentEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/IntentEventArgs;>;"
    iget-object v1, p0, Lcom/oneplus/camera/bokeh/BokehCaptureMode$2;->this$0:Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    sget-object v2, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Mode$State;->DISABLED:Lcom/oneplus/camera/Mode$State;

    if-eq v1, v2, :cond_0

    .line 82
    iget-object v1, p0, Lcom/oneplus/camera/bokeh/BokehCaptureMode$2;->this$0:Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    invoke-static {v1}, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->-wrap0(Lcom/oneplus/camera/bokeh/BokehCaptureMode;)Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 83
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    .line 85
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p3}, Lcom/oneplus/camera/IntentEventArgs;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "IsBokehOriginalPictureSupported"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_0
    return-void
.end method
