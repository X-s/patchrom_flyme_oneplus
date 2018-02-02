.class Lcom/oneplus/camera/ui/FaceBeautyUI$5;
.super Ljava/lang/Object;
.source "FaceBeautyUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/FaceBeautyUI;->onInitialize()V
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
        "Lcom/oneplus/camera/OperationState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/FaceBeautyUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/FaceBeautyUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/FaceBeautyUI;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI$5;->this$0:Lcom/oneplus/camera/ui/FaceBeautyUI;

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
            "Lcom/oneplus/camera/OperationState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/OperationState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/OperationState;>;"
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI$5;->this$0:Lcom/oneplus/camera/ui/FaceBeautyUI;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/FaceBeautyUI;->-wrap4(Lcom/oneplus/camera/ui/FaceBeautyUI;Lcom/oneplus/camera/OperationState;)V

    .line 209
    return-void
.end method
