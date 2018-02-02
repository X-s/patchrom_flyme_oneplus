.class Lcom/oneplus/camera/bokeh/BokehController$2;
.super Ljava/lang/Object;
.source "BokehController.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/bokeh/BokehController;
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
        "Lcom/oneplus/camera/BokehState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/bokeh/BokehController;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/bokeh/BokehController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/bokeh/BokehController;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oneplus/camera/bokeh/BokehController$2;->this$0:Lcom/oneplus/camera/bokeh/BokehController;

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
            "Lcom/oneplus/camera/BokehState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/BokehState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/BokehState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/BokehState;>;"
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController$2;->this$0:Lcom/oneplus/camera/bokeh/BokehController;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehController;->-wrap0(Lcom/oneplus/camera/bokeh/BokehController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController$2;->this$0:Lcom/oneplus/camera/bokeh/BokehController;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehController;->-wrap2(Lcom/oneplus/camera/bokeh/BokehController;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-static {v0, v2, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 65
    :cond_0
    return-void
.end method
