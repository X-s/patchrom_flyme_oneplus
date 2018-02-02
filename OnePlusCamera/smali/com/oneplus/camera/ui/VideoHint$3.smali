.class Lcom/oneplus/camera/ui/VideoHint$3;
.super Ljava/lang/Object;
.source "VideoHint.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/VideoHint;->onInitialize()V
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
        "Lcom/oneplus/camera/media/MediaType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/VideoHint;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/VideoHint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/VideoHint;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/oneplus/camera/ui/VideoHint$3;->this$0:Lcom/oneplus/camera/ui/VideoHint;

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
            "Lcom/oneplus/camera/media/MediaType;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/media/MediaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/media/MediaType;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/media/MediaType;>;"
    iget-object v1, p0, Lcom/oneplus/camera/ui/VideoHint$3;->this$0:Lcom/oneplus/camera/ui/VideoHint;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaType;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/VideoHint;->-set2(Lcom/oneplus/camera/ui/VideoHint;Lcom/oneplus/camera/media/MediaType;)Lcom/oneplus/camera/media/MediaType;

    .line 100
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint$3;->this$0:Lcom/oneplus/camera/ui/VideoHint;

    invoke-static {v0}, Lcom/oneplus/camera/ui/VideoHint;->-get0(Lcom/oneplus/camera/ui/VideoHint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint$3;->this$0:Lcom/oneplus/camera/ui/VideoHint;

    invoke-static {v0}, Lcom/oneplus/camera/ui/VideoHint;->-wrap0(Lcom/oneplus/camera/ui/VideoHint;)V

    .line 98
    :cond_0
    return-void
.end method
