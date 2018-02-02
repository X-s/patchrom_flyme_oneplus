.class Lcom/oneplus/camera/ui/OnScreenHintImpl$2$1;
.super Ljava/lang/Object;
.source "OnScreenHintImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/OnScreenHintImpl$2;->onComponentFound(Lcom/oneplus/camera/ui/FaceBeautyUI;)V
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
.field final synthetic this$1:Lcom/oneplus/camera/ui/OnScreenHintImpl$2;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OnScreenHintImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/OnScreenHintImpl$2;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$2$1;->this$1:Lcom/oneplus/camera/ui/OnScreenHintImpl$2;

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
    .line 188
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$2$1;->this$1:Lcom/oneplus/camera/ui/OnScreenHintImpl$2;

    iget-object v0, v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$2;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-get2(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$2$1;->this$1:Lcom/oneplus/camera/ui/OnScreenHintImpl$2;

    iget-object v1, v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$2;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$2$1;->this$1:Lcom/oneplus/camera/ui/OnScreenHintImpl$2;

    iget-object v0, v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$2;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-get2(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$2$1;->this$1:Lcom/oneplus/camera/ui/OnScreenHintImpl$2;

    iget-object v2, v2, Lcom/oneplus/camera/ui/OnScreenHintImpl$2;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-wrap2(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-wrap6(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;Lcom/oneplus/base/Rotation;)V

    goto :goto_0
.end method
