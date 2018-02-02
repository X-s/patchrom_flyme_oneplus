.class Lcom/oneplus/camera/FaceBeautyControllerImpl$12;
.super Ljava/lang/Object;
.source "FaceBeautyControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/FaceBeautyControllerImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/FaceBeautyControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/FaceBeautyControllerImpl;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$12;->this$0:Lcom/oneplus/camera/FaceBeautyControllerImpl;

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
            "Lcom/oneplus/camera/media/MediaType;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/media/MediaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/media/MediaType;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/media/MediaType;>;"
    iget-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$12;->this$0:Lcom/oneplus/camera/FaceBeautyControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->-wrap2(Lcom/oneplus/camera/FaceBeautyControllerImpl;)V

    .line 454
    return-void
.end method
