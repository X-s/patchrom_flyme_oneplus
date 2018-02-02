.class Lcom/oneplus/camera/manual/ManualCaptureMode$2;
.super Ljava/lang/Object;
.source "ManualCaptureMode.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;)V
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
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualCaptureMode;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualCaptureMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualCaptureMode;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualCaptureMode$2;->this$0:Lcom/oneplus/camera/manual/ManualCaptureMode;

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
    .line 70
    check-cast p3, Lcom/oneplus/camera/IntentEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/manual/ManualCaptureMode$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/IntentEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/IntentEventArgs;)V
    .locals 5
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
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/IntentEventArgs;>;"
    const/4 v4, 0x1

    .line 72
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualCaptureMode$2;->this$0:Lcom/oneplus/camera/manual/ManualCaptureMode;

    sget-object v3, Lcom/oneplus/camera/manual/ManualCaptureMode;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/manual/ManualCaptureMode;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Mode$State;->DISABLED:Lcom/oneplus/camera/Mode$State;

    if-eq v2, v3, :cond_1

    .line 74
    invoke-virtual {p3}, Lcom/oneplus/camera/IntentEventArgs;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "IsManualCaptureOptionsVisible"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualCaptureMode$2;->this$0:Lcom/oneplus/camera/manual/ManualCaptureMode;

    invoke-virtual {v2}, Lcom/oneplus/camera/manual/ManualCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "camera$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 77
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_0

    .line 78
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_ACTIVE_PICTURE_INFO_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {p3}, Lcom/oneplus/camera/IntentEventArgs;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "IsActivePictureInfoOptionsVisible"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v1    # "camera$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
