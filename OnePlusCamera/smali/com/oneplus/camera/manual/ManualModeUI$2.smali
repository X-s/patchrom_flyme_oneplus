.class Lcom/oneplus/camera/manual/ManualModeUI$2;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/manual/ManualModeUI;
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
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$2;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

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
            "Landroid/util/Size;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Landroid/util/Size;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Landroid/util/Size;>;"
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$2;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap0(Lcom/oneplus/camera/manual/ManualModeUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$2;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-get1(Lcom/oneplus/camera/manual/ManualModeUI;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PreviewSizeChanged"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$2;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-get16(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/RenderScript;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$2;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-get9(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/Allocation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$2;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-get9(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 240
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int v0, v2, v1

    .line 241
    .local v0, "newSize":I
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$2;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI$2;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v2}, Lcom/oneplus/camera/manual/ManualModeUI;->-get16(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/RenderScript;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualModeUI$2;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v3}, Lcom/oneplus/camera/manual/ManualModeUI;->-get16(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/RenderScript;

    move-result-object v3

    invoke-static {v3}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->-set9(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    .line 232
    .end local v0    # "newSize":I
    :cond_0
    return-void
.end method
