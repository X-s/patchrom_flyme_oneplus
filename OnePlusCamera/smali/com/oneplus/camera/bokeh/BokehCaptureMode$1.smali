.class Lcom/oneplus/camera/bokeh/BokehCaptureMode$1;
.super Ljava/lang/Object;
.source "BokehCaptureMode.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


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
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/oneplus/camera/Camera;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/bokeh/BokehCaptureMode;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/bokeh/BokehCaptureMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oneplus/camera/bokeh/BokehCaptureMode$1;->this$0:Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 5
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/util/List<Lcom/oneplus/camera/Camera;>;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/util/List<Lcom/oneplus/camera/Camera;>;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 62
    .local v1, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 64
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 65
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-eq v3, v4, :cond_0

    .line 62
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 67
    :cond_0
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    iget-object v3, p0, Lcom/oneplus/camera/bokeh/BokehCaptureMode$1;->this$0:Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    invoke-static {v3}, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->-wrap1(Lcom/oneplus/camera/bokeh/BokehCaptureMode;)V

    .line 59
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_1
    return-void
.end method
