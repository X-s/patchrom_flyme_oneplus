.class Lcom/oneplus/camera/bokeh/BokehController$1;
.super Ljava/lang/Object;
.source "BokehController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/bokeh/BokehController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/bokeh/BokehController;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/bokeh/BokehController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/bokeh/BokehController;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oneplus/camera/bokeh/BokehController$1;->this$0:Lcom/oneplus/camera/bokeh/BokehController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController$1;->this$0:Lcom/oneplus/camera/bokeh/BokehController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/bokeh/BokehController;->-set0(Lcom/oneplus/camera/bokeh/BokehController;Z)Z

    .line 49
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController$1;->this$0:Lcom/oneplus/camera/bokeh/BokehController;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehController;->-wrap3(Lcom/oneplus/camera/bokeh/BokehController;)V

    .line 46
    return-void
.end method
