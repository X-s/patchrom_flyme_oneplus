.class Lcom/oneplus/camera/manual/ManualModeUI$15$1;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI$15;->onComponentFound(Lcom/oneplus/camera/ui/OptionsPanel;)V
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
.field final synthetic this$1:Lcom/oneplus/camera/manual/ManualModeUI$15;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/manual/ManualModeUI$15;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$15$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$15;

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
    .line 693
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$15$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$15;

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI$15;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get1(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/manual/ControlType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    if-eq v0, v1, :cond_0

    .line 696
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$15$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$15;

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI$15;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v1, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    invoke-static {v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap12(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;)V

    .line 691
    :cond_0
    return-void
.end method
