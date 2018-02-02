.class Lcom/oneplus/camera/bokeh/BokehUI$2;
.super Ljava/lang/Object;
.source "BokehUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/bokeh/BokehUI;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/bokeh/BokehUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/bokeh/BokehUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/bokeh/BokehUI;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/oneplus/camera/bokeh/BokehUI$2;->this$0:Lcom/oneplus/camera/bokeh/BokehUI;

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
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .line 349
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI$2;->this$0:Lcom/oneplus/camera/bokeh/BokehUI;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehUI;->-wrap0(Lcom/oneplus/camera/bokeh/BokehUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    return-void

    .line 351
    :cond_0
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI$2;->this$0:Lcom/oneplus/camera/bokeh/BokehUI;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehUI;->-wrap1(Lcom/oneplus/camera/bokeh/BokehUI;)Lcom/oneplus/camera/ModeController;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    .line 347
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI$2;->this$0:Lcom/oneplus/camera/bokeh/BokehUI;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehUI;->-get1(Lcom/oneplus/camera/bokeh/BokehUI;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI$2;->this$0:Lcom/oneplus/camera/bokeh/BokehUI;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehUI;->-get1(Lcom/oneplus/camera/bokeh/BokehUI;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI$2;->this$0:Lcom/oneplus/camera/bokeh/BokehUI;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehUI;->-get1(Lcom/oneplus/camera/bokeh/BokehUI;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI$2;->this$0:Lcom/oneplus/camera/bokeh/BokehUI;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehUI;->-wrap1(Lcom/oneplus/camera/bokeh/BokehUI;)Lcom/oneplus/camera/ModeController;

    move-result-object v0

    const/16 v1, 0x2712

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    goto :goto_0
.end method
