.class Lcom/oneplus/camera/ui/PreviewCoverImpl$2;
.super Ljava/lang/Object;
.source "PreviewCoverImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewCoverImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewCoverImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/PreviewCoverImpl;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl$2;->this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;

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
    .line 197
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl$2;->this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-get1(Lcom/oneplus/camera/ui/PreviewCoverImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl$2;->this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-get0(Lcom/oneplus/camera/ui/PreviewCoverImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInitialize() - Clear preview cover handles when pausing: "

    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl$2;->this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-get1(Lcom/oneplus/camera/ui/PreviewCoverImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl$2;->this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-get1(Lcom/oneplus/camera/ui/PreviewCoverImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl$2;->this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-get1(Lcom/oneplus/camera/ui/PreviewCoverImpl;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method
