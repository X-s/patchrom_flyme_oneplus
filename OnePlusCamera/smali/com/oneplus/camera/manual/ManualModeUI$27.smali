.class Lcom/oneplus/camera/manual/ManualModeUI$27;
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
    .line 1443
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$27;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

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
    .line 1448
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$27;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap0(Lcom/oneplus/camera/manual/ManualModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1450
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1451
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$27;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap23(Lcom/oneplus/camera/manual/ManualModeUI;Z)V

    .line 1446
    :cond_0
    :goto_0
    return-void

    .line 1453
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$27;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap23(Lcom/oneplus/camera/manual/ManualModeUI;Z)V

    goto :goto_0
.end method
