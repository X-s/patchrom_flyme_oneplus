.class Lcom/oneplus/camera/manual/ManualModeUI$17$1;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI$17;->onComponentFound(Lcom/oneplus/camera/ui/Viewfinder;)V
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
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/manual/ManualModeUI$17;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/manual/ManualModeUI$17;

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$17$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$17;

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
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1290
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Landroid/graphics/RectF;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Landroid/graphics/RectF;>;"
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$17$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$17;

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI$17;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap0(Lcom/oneplus/camera/manual/ManualModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$17$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$17;

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI$17;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap30(Lcom/oneplus/camera/manual/ManualModeUI;)V

    .line 1293
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$17$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$17;

    iget-object v1, v0, Lcom/oneplus/camera/manual/ManualModeUI$17;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-static {v1, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap31(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/graphics/RectF;)V

    .line 1288
    :cond_0
    return-void
.end method
