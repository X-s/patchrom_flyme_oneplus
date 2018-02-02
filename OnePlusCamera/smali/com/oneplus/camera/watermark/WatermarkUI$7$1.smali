.class Lcom/oneplus/camera/watermark/WatermarkUI$7$1;
.super Ljava/lang/Object;
.source "WatermarkUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/watermark/WatermarkUI$7;->run()V
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
.field final synthetic this$1:Lcom/oneplus/camera/watermark/WatermarkUI$7;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/watermark/WatermarkUI$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/watermark/WatermarkUI$7;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/oneplus/camera/watermark/WatermarkUI$7$1;->this$1:Lcom/oneplus/camera/watermark/WatermarkUI$7;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI$7$1;->this$1:Lcom/oneplus/camera/watermark/WatermarkUI$7;

    iget-object v0, v0, Lcom/oneplus/camera/watermark/WatermarkUI$7;->this$0:Lcom/oneplus/camera/watermark/WatermarkUI;

    invoke-static {v0}, Lcom/oneplus/camera/watermark/WatermarkUI;->-wrap3(Lcom/oneplus/camera/watermark/WatermarkUI;)V

    .line 339
    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI$7$1;->this$1:Lcom/oneplus/camera/watermark/WatermarkUI$7;

    iget-object v0, v0, Lcom/oneplus/camera/watermark/WatermarkUI$7;->this$0:Lcom/oneplus/camera/watermark/WatermarkUI;

    invoke-static {v0}, Lcom/oneplus/camera/watermark/WatermarkUI;->-wrap2(Lcom/oneplus/camera/watermark/WatermarkUI;)V

    .line 333
    return-void
.end method
