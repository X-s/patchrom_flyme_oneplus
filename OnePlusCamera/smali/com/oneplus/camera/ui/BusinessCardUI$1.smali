.class Lcom/oneplus/camera/ui/BusinessCardUI$1;
.super Ljava/lang/Object;
.source "BusinessCardUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/BusinessCardUI;->onInitialize()V
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
        "Ljava/util/List",
        "<",
        "Lcom/oneplus/camera/Camera;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/BusinessCardUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/BusinessCardUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/BusinessCardUI;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$1;->this$0:Lcom/oneplus/camera/ui/BusinessCardUI;

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
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/util/List<Lcom/oneplus/camera/Camera;>;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/util/List<Lcom/oneplus/camera/Camera;>;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$1;->this$0:Lcom/oneplus/camera/ui/BusinessCardUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/BusinessCardUI;->-get0(Lcom/oneplus/camera/ui/BusinessCardUI;)Lcom/oneplus/camera/Camera$LensFacing;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$1;->this$0:Lcom/oneplus/camera/ui/BusinessCardUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/BusinessCardUI;->-get3(Lcom/oneplus/camera/ui/BusinessCardUI;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "CameraLensFacing"

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    :cond_0
    return-void
.end method
