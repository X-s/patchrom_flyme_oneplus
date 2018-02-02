.class Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$1;
.super Ljava/lang/Object;
.source "OnlineWatermarkControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;
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
        "Landroid/util/Size;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$1;->this$0:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/util/List<Landroid/util/Size;>;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/util/List<Landroid/util/Size;>;>;"
    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$1;->this$0:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->-wrap2(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;J)V

    .line 79
    return-void
.end method
