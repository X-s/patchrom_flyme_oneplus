.class Lcom/oneplus/camera/ui/OnScreenHintImpl$4;
.super Ljava/lang/Object;
.source "OnScreenHintImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/OnScreenHintImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$4;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .param p2, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p3, "e"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$4;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-get1(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$4;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$4;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-get1(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-wrap1(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$4;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    sget-object v1, Lcom/oneplus/camera/ui/OnScreenHintImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-wrap0(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$4;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$4;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-get0(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/camera/widget/RotateRelativeLayout;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-wrap5(Lcom/oneplus/camera/ui/OnScreenHintImpl;Landroid/view/View;Z)V

    .line 228
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$4;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    sget-object v1, Lcom/oneplus/camera/ui/OnScreenHintImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-wrap0(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method
