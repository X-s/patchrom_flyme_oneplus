.class Lcom/oneplus/camera/manual/ManualModeUI$11;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$11;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 597
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$11;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap0(Lcom/oneplus/camera/manual/ManualModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$11;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap8(Lcom/oneplus/camera/manual/ManualModeUI;)V

    .line 602
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$11;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap6(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    .line 603
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$11;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$11;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get0(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/base/HandleSet;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/HandleSet;

    invoke-static {v1, v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-set1(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/base/HandleSet;)Lcom/oneplus/base/HandleSet;

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$11;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap17(Lcom/oneplus/camera/manual/ManualModeUI;)V

    .line 608
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$11;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap4(Lcom/oneplus/camera/manual/ManualModeUI;)V

    goto :goto_0
.end method
