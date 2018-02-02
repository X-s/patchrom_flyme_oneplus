.class Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$4;
.super Ljava/lang/Object;
.source "OnlineWatermarkControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->onInitialize()V
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
        "Lcom/oneplus/base/Rotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$4;->this$0:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

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
            "Lcom/oneplus/base/Rotation;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/Rotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/Rotation;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/Rotation;>;"
    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$4;->this$0:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->-wrap3(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V

    .line 539
    return-void
.end method
