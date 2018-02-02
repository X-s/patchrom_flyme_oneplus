.class Lcom/oneplus/camera/manual/ManualModeUI$29;
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
    .line 1490
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$29;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 7
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
    .line 1495
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$29;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap12(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    .line 1498
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$29;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$29;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get4(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap25(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 1502
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$29;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap32(Lcom/oneplus/camera/manual/ManualModeUI;)V

    .line 1493
    return-void

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$29;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$29;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-get4(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap24(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/view/View;Z)V

    goto :goto_0
.end method
