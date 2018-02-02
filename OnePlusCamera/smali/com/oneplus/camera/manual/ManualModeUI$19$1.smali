.class Lcom/oneplus/camera/manual/ManualModeUI$19$1;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI$19;->onComponentFound(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
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
.field final synthetic this$1:Lcom/oneplus/camera/manual/ManualModeUI$19;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI$19;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/manual/ManualModeUI$19;

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$19$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$19;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1320
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$19$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$19;

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI$19;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap0(Lcom/oneplus/camera/manual/ManualModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$19$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$19;

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI$19;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get6(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/GestureDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$19$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$19;

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI$19;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$19$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$19;

    iget-object v1, v1, Lcom/oneplus/camera/manual/ManualModeUI$19;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-get6(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/GestureDetector;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI$19$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$19;

    iget-object v2, v2, Lcom/oneplus/camera/manual/ManualModeUI$19;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v2}, Lcom/oneplus/camera/manual/ManualModeUI;->-get7(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/GestureDetector;->setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-set7(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1318
    :cond_0
    return-void
.end method
