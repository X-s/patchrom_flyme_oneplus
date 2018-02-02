.class Lcom/oneplus/camera/bokeh/BokehUI$3;
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
        "Lcom/oneplus/base/BaseActivity$State;",
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
    .line 364
    iput-object p1, p0, Lcom/oneplus/camera/bokeh/BokehUI$3;->this$0:Lcom/oneplus/camera/bokeh/BokehUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 6
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
    .line 369
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI$3;->this$0:Lcom/oneplus/camera/bokeh/BokehUI;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehUI;->-wrap0(Lcom/oneplus/camera/bokeh/BokehUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI$3;->this$0:Lcom/oneplus/camera/bokeh/BokehUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/oneplus/camera/bokeh/BokehUI;->-set0(Lcom/oneplus/camera/bokeh/BokehUI;J)J

    .line 372
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI$3;->this$0:Lcom/oneplus/camera/bokeh/BokehUI;

    const/16 v1, 0x2724

    const/4 v2, 0x1

    const-wide/16 v4, 0x7d0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 367
    :cond_0
    return-void
.end method
