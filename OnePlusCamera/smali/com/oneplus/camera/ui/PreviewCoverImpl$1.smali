.class Lcom/oneplus/camera/ui/PreviewCoverImpl$1;
.super Ljava/lang/Object;
.source "PreviewCoverImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/PreviewCoverImpl;
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
        "Lcom/oneplus/camera/ui/PreviewCoverProducer$State;",
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
    .line 25
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl$1;->this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCoverProducer$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCoverProducer$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/ui/PreviewCoverProducer$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/ui/PreviewCoverProducer$State;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl$1;->this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;

    invoke-static {v0, p3}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-wrap1(Lcom/oneplus/camera/ui/PreviewCoverImpl;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    .line 28
    return-void
.end method
