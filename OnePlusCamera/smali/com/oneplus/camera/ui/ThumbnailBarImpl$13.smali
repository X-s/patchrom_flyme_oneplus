.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$13;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$13;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

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
    .line 1033
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$13;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get4(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$13;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$13;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get9(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 1038
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$13;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set2(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$13;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap13(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    .line 1031
    return-void
.end method
