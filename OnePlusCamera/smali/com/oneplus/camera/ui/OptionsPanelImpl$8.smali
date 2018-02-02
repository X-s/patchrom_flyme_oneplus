.class Lcom/oneplus/camera/ui/OptionsPanelImpl$8;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupPropertyChangedCallback()V
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
        "Lcom/oneplus/camera/Camera;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/OptionsPanelImpl;

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$8;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

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
            "Lcom/oneplus/camera/Camera;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1050
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/Camera;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/Camera;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$8;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-wrap1(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    .line 1052
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$8;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-wrap0(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$8;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-wrap11(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    .line 1055
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v0, v1, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$8;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$8;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-get7(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-get1()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-wrap12(Lcom/oneplus/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$8;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$8;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-get7(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-get0()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-wrap12(Lcom/oneplus/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_0
.end method
