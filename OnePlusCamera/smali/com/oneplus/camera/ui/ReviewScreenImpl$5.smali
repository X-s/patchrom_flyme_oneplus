.class Lcom/oneplus/camera/ui/ReviewScreenImpl$5;
.super Ljava/lang/Object;
.source "ReviewScreenImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ReviewScreenImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ReviewScreenImpl;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$5;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

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
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 643
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$5;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get5(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$5;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get5(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$5;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$5;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get5(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-wrap10(Lcom/oneplus/camera/ui/ReviewScreenImpl;Landroid/view/View;Z)V

    .line 646
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$5;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-wrap0(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 641
    :cond_0
    return-void
.end method
