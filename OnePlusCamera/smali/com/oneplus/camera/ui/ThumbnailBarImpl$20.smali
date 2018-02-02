.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;
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
        "Lcom/oneplus/camera/manual/ControlType;",
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
    .line 512
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

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
            "Lcom/oneplus/camera/manual/ControlType;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/manual/ControlType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/manual/ControlType;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/manual/ControlType;>;"
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ControlType;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set6(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/manual/ControlType;)Lcom/oneplus/camera/manual/ControlType;

    .line 517
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->updateThumbnailBarContianerMargins()V

    .line 514
    return-void
.end method
