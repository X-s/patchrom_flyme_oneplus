.class Lcom/oneplus/camera/UIFocusControllerImpl$4;
.super Ljava/lang/Object;
.source "UIFocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/UIFocusControllerImpl;->onInitialize()V
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
        "Lcom/oneplus/camera/media/Resolution;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/UIFocusControllerImpl;

.field final synthetic val$activity:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/UIFocusControllerImpl;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/UIFocusControllerImpl;
    .param p2, "val$activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/oneplus/camera/UIFocusControllerImpl$4;->this$0:Lcom/oneplus/camera/UIFocusControllerImpl;

    iput-object p2, p0, Lcom/oneplus/camera/UIFocusControllerImpl$4;->val$activity:Lcom/oneplus/camera/CameraActivity;

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
            "Lcom/oneplus/camera/media/Resolution;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/media/Resolution;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/media/Resolution;>;"
    iget-object v0, p0, Lcom/oneplus/camera/UIFocusControllerImpl$4;->val$activity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/oneplus/camera/UIFocusControllerImpl$4;->this$0:Lcom/oneplus/camera/UIFocusControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/UIFocusControllerImpl;->-wrap0(Lcom/oneplus/camera/UIFocusControllerImpl;)V

    .line 147
    :cond_0
    return-void
.end method
