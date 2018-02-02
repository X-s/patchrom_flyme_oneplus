.class Lcom/oneplus/camera/ui/LevelGaugeUI$4;
.super Ljava/lang/Object;
.source "LevelGaugeUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/LevelGaugeUI;->onInitialize()V
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
        "Lcom/oneplus/camera/PhotoCaptureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/LevelGaugeUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/LevelGaugeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/LevelGaugeUI;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI$4;->this$0:Lcom/oneplus/camera/ui/LevelGaugeUI;

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
            "Lcom/oneplus/camera/PhotoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/PhotoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/PhotoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/PhotoCaptureState;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/LevelGaugeUI$4;->this$0:Lcom/oneplus/camera/ui/LevelGaugeUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/LevelGaugeUI;->-wrap1(Lcom/oneplus/camera/ui/LevelGaugeUI;)V

    .line 190
    return-void
.end method
